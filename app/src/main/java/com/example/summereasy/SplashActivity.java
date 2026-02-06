package com.example.summereasy;

import static com.example.summereasy.R.anim.fadein;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

public class SplashActivity extends AppCompatActivity {

    ImageView ivlogo;  // object creation
    TextView tvTitle,tvSubtitle;
    Animation fadeInAnim;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable(this);
        setContentView(R.layout.activity_splash);


 // objectname = methodname(R.id.name)
        ivlogo = findViewById(R.id.ivMainLogo);
        tvTitle= findViewById(R.id.tvMainTitle);
        tvSubtitle=findViewById(R.id.tvSubTitle);

        fadeInAnim= AnimationUtils.loadAnimation(SplashActivity.this,R.anim.fadein);

        ivlogo.setAnimation(fadeInAnim);
        tvTitle.setAnimation(fadeInAnim);
        tvSubtitle.setAnimation(fadeInAnim);

        Handler h = new Handler();
        h.postDelayed(new Runnable()
        {
            @Override
            public void run() {
                Intent i = new Intent(SplashActivity.this,LoginActivity.class);
            }
        },3000);





        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main), (v, insets) -> {
            Insets systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars());
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom);
            return insets;
        });
    }
}


//class = pascal case
//object = camel case
//keyword = package,import,class
//method =()
//symbol = , () {}
//Annotation and special symbol