
import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import com.example.summereasy.R;

public class LoginPageActivity extends AppCompatActivity {

        private EditText etUsername;
        private EditText etPassword;
        private Button btnLogin;

        @Override
        protected void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            setContentView(R.layout.login_page);

            etUsername = findViewById(R.id.et_username);
            etPassword = findViewById(R.id.et_password);
            btnLogin = findViewById(R.id.btn_login);

            btnLogin.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    // Handle login logic here
                }
            });
        }
    }

