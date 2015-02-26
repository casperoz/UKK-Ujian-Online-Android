package com.novrezza.ujianonline;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.Menu;
import android.view.MenuItem;

public class Splash extends Activity {

	 /* kode untuk menampilkan splash screen salama 2 detik */
    private final int SPLASH_DISPLAY_LENGHT = 2000;

    /* Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
		/* layout splashscreen dengan background gambar */
        setContentView(R.layout.activity_splash);
	/* handler untuk menjalankan splashscreen selama 5 detik lalu
	 * membuat HomeActivity
	 */
        new android.os.Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                Intent mainIntent = null;

                mainIntent = new Intent(Splash.this,
                        Home.class);

                Splash.this.startActivity(mainIntent);
                finish();
            }
        }, SPLASH_DISPLAY_LENGHT);
    }
}
