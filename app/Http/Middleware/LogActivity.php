<?php

namespace App\Http\Middleware;

use App\Models\ActivityLog;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class LogActivity
{
    public function handle(Request $request, Closure $next)
    {
        $response = $next($request);

        if (! $request->route()) {
            return $response;
        }

        $routeName = $request->route()->getName() ?: $request->path();
        $routeAction = $request->route()->getActionName();

        ActivityLog::create([
            'user_id' => $request->user()?->id,
            'user_name' => $request->user()?->name,
            'method' => $request->method(),
            'route' => $routeName,
            'action' => $routeAction,
            'url' => $request->fullUrl(),
            'ip_address' => $request->ip(),
            'user_agent' => $request->userAgent(),
            'description' => Str::limit($request->method() . ' ' . $request->fullUrl(), 255),
        ]);

        return $response;
    }
}
