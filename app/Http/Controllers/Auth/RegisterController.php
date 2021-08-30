<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use DB;
class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    public function referal($id)
    {
        $data = DB::table('users')
        ->where('referal', $id)
        ->first();
        if ($data == TRUE) {
            return view('auth.register_referal', compact('data'));
        }else{
            return view('auth.register');
        }
    }
    protected function create(array $data)
    {
        if ($data['referal'] == null) {
            $user = User::create([
                'name' => $data['name'],
                'email' => $data['email'],
                'level' => 'owner',
                'notelp' => $data['notelp'],
                'id_team' => bin2hex(random_bytes(20)),
                'password' => Hash::make($data['password']),
            ]);
        }else{
            $user = User::create([
                'name' => $data['name'],
                'email' => $data['email'],
                'referal' => $data['referal'],
                'agen' => 2,
                'level' => 'owner',
                'notelp' => $data['notelp'],
                'id_team' => bin2hex(random_bytes(20)),
                'password' => Hash::make($data['password']),
            ]);
        }
        
        $role = DB::table('perusahaan')
        ->where('id_team', $user->id_team)
        ->first();
        if ($role === NULL) {
            DB::table('role_payment')
            ->insert([
                'user_id'   => $user->id,
                'dibayar' => date('Y-m-d', strtotime('+30 days', strtotime(now()))),
                'tgl_bayar' => now(),
                'pay' =>  2,
                'bulan' =>  1,
                'created_at'   => now(),
                'updated_at'   => now(),
            ]);
            DB::table('perusahaan')
            ->insert([
                'id_team'   => $user->id_team,
                'lokasi'   => $data['lokasi'],
                'alamat'   => $data['alamat'],
                'nama_perusahaan'   => $data['nama_perusahaan'],
                'created_at'   => now(),
                'updated_at'   => now(),
            ]);
        }else{
            DB::table('perusahaan')
            ->update([
                'lokasi'   => $data['lokasi'],
                'alamat'   => $data['alamat'],
                'nama_perusahaan'   => $data['nama_perusahaan'],
                'created_at'   => now(),
                'updated_at'   => now(),
            ]);
        }
        return $user;
    }
}
