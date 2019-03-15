package com.ch.flutter_app;

import android.util.Log;

import io.flutter.app.FlutterApplication;

public class App extends FlutterApplication {
    @Override
    public void onCreate() {
        super.onCreate();
        Log.i("xxxx", "App#onCreate");
    }
}
