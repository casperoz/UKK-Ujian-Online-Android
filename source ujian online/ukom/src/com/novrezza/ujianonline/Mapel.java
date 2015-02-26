package com.novrezza.ujianonline;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;

public class Mapel extends Activity implements View.OnClickListener {
	Button mapel_mtk, mapel_bing, mapel_bindo;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_mapel);
		mapel_mtk = (Button)findViewById(R.id.btnmtk);
		mapel_mtk.setOnClickListener(this);
		mapel_bing = (Button)findViewById(R.id.btning);
		mapel_bing.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent bing = new Intent(getApplicationContext(), Soalbing.class);
				startActivity(bing);
				
			}
		});
		mapel_bindo = (Button)findViewById(R.id.btnindo);
		mapel_bindo.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent bindo = new Intent(getApplicationContext(), Soalbindo.class);
				startActivity(bindo);
				
			}
		});
		
		
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.mapel, menu);
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		// Handle action bar item clicks here. The action bar will
		// automatically handle clicks on the Home/Up button, so long
		// as you specify a parent activity in AndroidManifest.xml.
		int id = item.getItemId();
		if (id == R.id.action_settings) {
			return true;
		}
		return super.onOptionsItemSelected(item);
	}

	@Override
	public void onClick(View v) {
		// TODO Auto-generated method stub
		switch (v.getId()) {
		case R.id.btnmtk:
			Intent intent = new Intent(Mapel.this, Soalmtk.class);
			startActivity(intent);
			break;

		default:
			break;
		}
	}
}
