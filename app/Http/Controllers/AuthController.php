<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{

    public function LoginForm()
    {
        return view('login');
    }

    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required|string',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $user = User::where('email', $request->email)->first();

        if (!$user || !Hash::check($request->password, $user->password)) {
            return response()->json(['message' => 'Invalid credentials'], 401);
        }

        $token = $user->createToken('blogApp')->plainTextToken;
        // dd($token);


        return response()->json([
            'token' => $token,
            'user' => $user,
            'message' => 'Login successful',
            'redirect_url' => route('blog'),
        ])
            ->cookie('auth_token', $token, 60);
    }
    public function logout(Request $request)
    {
        
        return redirect()->route('index')
            ->withCookie(cookie()->forget('auth_token')); 
    }
    
}
