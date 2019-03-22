package com.ch.flutter_app;

import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;

import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
    private static final String CHANNEL = "flutter_call_java.flutter.io/test.demo";
    private static final String METHOD_NAME = "toast_msg";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        GeneratedPluginRegistrant.registerWith(this);

        flutter_call_java_init();
    }

    private void flutter_call_java_init() {
        // setMethodCallHandler在此通道上接收方法调用的回调
        new MethodChannel(getFlutterView(), CHANNEL).setMethodCallHandler(
                new MethodChannel.MethodCallHandler() {
                    @Override
                    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
                        // 通过methodCall可以获取参数和方法名
                        // 执行对应的平台业务逻辑即可
                        Log.i("xxxx", "methodCall.method: " + methodCall.method);

                        if (methodCall.method.equals(METHOD_NAME)) {
                            Object objs = methodCall.arguments();
                            toast_msg(String.valueOf(objs));
                            int ret = (int) (System.currentTimeMillis() % 2);
                            if (ret != 0) {
                                result.error("hello1", "hello2", "hello3");
                            } else {
                                result.success(0);
                            }
                        } else {
                            result.notImplemented();
                        }
                    }
                }
        );
    }

    public void toast_msg(String msg) {
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                Toast.makeText(MainActivity.this, msg, Toast.LENGTH_SHORT).show();
            }
        });
    }
}
