package com.novrezza.ujianonline;

import java.util.ArrayList;
import java.util.List;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

public class Login extends Activity {

	private EditText textUser, textPass;
	private Button btnmasuk;
	
	// Progress Dialog
	   private ProgressDialog pDialog;

	// JSON parser class
	   JSONParser jsonParser = new JSONParser();

	   private static final String LOGIN_URL = "http://192.168.0.10/ujian/login/login.php";

	   private static final String TAG_SUCCESS = "success";
	   private static final String TAG_MESSAGE = "message";

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_login);
		
		textUser = (EditText) findViewById(R.id.editUsername);
		textPass = (EditText) findViewById(R.id.editPassword);
		
		
		btnmasuk = (Button) findViewById(R.id.btnmasuk);
		btnmasuk.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				new AttemptSignIn().execute();
			}
		});
		
	}
	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.login, menu);
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
/*
	@Override
	public void onClick(View v) {
		// TODO Auto-generated method stub
		switch (v.getId()) {
		case R.id.btnSignIn:
			new AttemptSignIn().execute();
			break;
		case R.id.textSignUp:
			Intent i = new Intent(this, SignUp.class);
			startActivity(i);
			break;
		case R.id.btnCancel:
			SignIn.this.finish();
		
		default:
			break;
		}
	}
	*/
	class AttemptSignIn extends AsyncTask<String, String, String> {

		@Override
		protected void onPreExecute() {
			super.onPreExecute();
			pDialog = new ProgressDialog(Login.this);
			pDialog.setMessage("Attempting login...");
			pDialog.setIndeterminate(false);
			pDialog.setCancelable(true);
			pDialog.show();

		}
		
		@Override
		protected String doInBackground(String... params) {
			// TODO Auto-generated method stub
			int success;
			String username = textUser.getText().toString();
		    String password = textPass.getText().toString();
			try {
				// Building Parameters
			    List<NameValuePair> param = new ArrayList<NameValuePair>();
			    param.add(new BasicNameValuePair("username", username));
			    param.add(new BasicNameValuePair("password", password));

			    JSONObject json = jsonParser.makeHTTPRequest(
	                       LOGIN_URL, "POST", param);
	 
	                // check your log for json response
	                Log.d("Masuk Data", json.toString());

			    // json success tag
			    success = json.getInt(TAG_SUCCESS);

			    if (success == 1) {

			    Log.d("Login Berhasil!", json.toString());
			    Intent i = new Intent(Login.this, Mapel.class);
			    finish();
			    startActivity(i);
			    return json.getString(TAG_MESSAGE);
			    } else {
			    Log.d("Login Failure!", json.getString(TAG_MESSAGE));
			    return json.getString(TAG_MESSAGE);
			    }
				} catch (JSONException e) {
			            e.printStackTrace();
			    }
			 return null;
		}
		
		protected void onPostExecute(String file_url) {
			
		}
	}
}
