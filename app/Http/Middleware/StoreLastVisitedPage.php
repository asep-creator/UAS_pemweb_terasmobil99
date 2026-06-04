<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Symfony\Component\HttpFoundation\Response;

class StoreLastVisitedPage
{
    public function handle(Request $request, Closure $next): Response
    {
        if (
            $request->isMethod('get') &&
            ! $request->user() &&
            ! session()->has('url.intended') &&
            ! $request->routeIs('login', 'register', 'password.*', 'verification.*')
        ) {
            $previous = url()->previous();

            if ($previous && ! Str::contains($previous, [
                '/login',
                '/register',
                '/forgot-password',
                '/reset-password',
                '/verify-email',
            ])) {
                session(['url.intended' => $previous]);
            }
        }

        return $next($request);
    }
}
