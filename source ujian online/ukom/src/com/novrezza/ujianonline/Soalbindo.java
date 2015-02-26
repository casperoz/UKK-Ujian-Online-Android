package com.novrezza.ujianonline;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ActionBar.LayoutParams;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

public class Soalbindo extends Activity {
	private static final int a = 1;
	private static final int b = 2;
	private static final int c = 3;
	private static final int d = 4;
	TextView soal;
	TextView tHasil;
	String sJwban;
	int noSoal;
	int i;
	int benar = 0;
	int salah = 0;
 
	// ---Soal
	String arrSoal[] = { "1. Pengertian Lawan Kata adalah=?",
			"2. Pengertian Persamaan Kata adalah=?",
			"3. Majas yang melebih-lebihkan pernyataan=?",
			"4. Kata berkonotasi negatif adalah=?",
			"5. Kata baku yang benar adalah= ?" };
 
	// [][] artinya array memiliki 2 baris, 3 kolom
	//kumpulan pilihan ganda
	String arritems[][] = { { "a. Antonim", "b. Sinonim", "c. Deduktif", "d. Induktif" },// jawaban no 1
			{ "a. Antonim", "b. Sinonim", "c. Deduktif", "Induktif. 7" },// jawaban no 2
			{ "a. Hiperbola", "b. Personifikasi", "c. Anafora", "Metafora. 1" },// jawaban no 3
			{ "a. Jenius", "b. Penari", "c. Preman", "d. Pekerja" },// jawaban no 4
			{ "a. Ijin", "b. Praktek", "c. Propinsi", "d. Risiko" } };// jawaban no 5
	int jwb[] = { a, b, a, c, d };//jawaban benar
 
	int counter = arrSoal.length;
	TextView[] tvJwb = new TextView[counter];
	int jwbanUser[] = new int[counter];
 
	/** Called when the activity is first created. */
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_soalmtk);
		ScrollView scroll = new ScrollView(this);
		scroll.setLayoutParams(new LayoutParams(LayoutParams.WRAP_CONTENT,
				LayoutParams.WRAP_CONTENT));
 
		LinearLayout linearLayout0 = new LinearLayout(this);
		linearLayout0.setLayoutParams(new LayoutParams(
				LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT));
		linearLayout0.setOrientation(1);
 
		LinearLayout linearLayout1 = new LinearLayout(this);
		linearLayout1.setLayoutParams(new LayoutParams(
				LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
		linearLayout1.setOrientation(1);
 
		LinearLayout linearLayout2 = new LinearLayout(this);
		linearLayout2.setLayoutParams(new LayoutParams(
				LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
		linearLayout2.setOrientation(1);
		
//	LinearLayout linearLayout3 = new LinearLayout(this);
//		linearLayout2.setLayoutParams(new LayoutParams(
//				LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
//		linearLayout2.setOrientation(1);
 
		TextView[] tv = new TextView[counter];
		// TextView[] tvJwb = new TextView[counter];
		Button[] b = new Button[counter];

	//	Button[] c = new Button[counter];
		
		View[] v = new View[counter];
		for (i = 0; i < counter; i++) {
			// --- textview soal
			tv[i] = new TextView(this);
			tv[i].setLayoutParams(new LayoutParams(LayoutParams.WRAP_CONTENT,
					LayoutParams.WRAP_CONTENT));
			tv[i].setText(arrSoal[i]);
			tv[i].setTextSize(24);
 
			// --- textview jawaban
			tvJwb[i] = new TextView(this);
			tvJwb[i].setLayoutParams(new LayoutParams(
					LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT));
			tvJwb[i].setText("Belum dijawab");
 
			// -----button jawab
			b[i] = new Button(this);
			b[i].setLayoutParams(new LayoutParams(LayoutParams.MATCH_PARENT,
					LayoutParams.WRAP_CONTENT));
		//	c[i] = new Button(this);
		//	c[i].setLayoutParams(new LayoutParams(LayoutParams.MATCH_PARENT,
//					LayoutParams.WRAP_CONTENT));
 
			b[i].setText("Jawab");
			b[i].setId(i);
			b[i].setOnClickListener(new OnClickListener() {
				@Override
				public void onClick(View v) {
					// TODO Auto-generated method stub
					munculListDialog(v.getId());
					// Toast.makeText(getApplicationContext(),
					// String.valueOf(v.getId()), Toast.LENGTH_SHORT)
					// .show();
				}
			});
			// ------ garis
			v[i] = new View(this);
			v[i].setLayoutParams(new LayoutParams(LayoutParams.WRAP_CONTENT, 2));
			v[i].setBackgroundColor(0xFF808080);// .setBackgroundColor(R.color.putih);
 
			linearLayout1.addView(tv[i]);
			linearLayout1.addView(tvJwb[i]);
			linearLayout1.addView(b[i]);
			linearLayout1.addView(v[i]);
		}
		Button bHasil = new Button(this);
		bHasil.setLayoutParams(new LayoutParams(LayoutParams.MATCH_PARENT,
				LayoutParams.WRAP_CONTENT));
		bHasil.setText("HASIL");
		bHasil.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				hitung();
			}
		});
		tHasil=new TextView(this);
		tHasil.setLayoutParams(new LayoutParams(LayoutParams.MATCH_PARENT,
				LayoutParams.WRAP_CONTENT));
		tHasil.setText("Hasil jawaban Anda : ");
		// linearLayout0.addView(linearLayout1);
		linearLayout1.addView(bHasil);
		linearLayout1.addView(tHasil);
		scroll.addView(linearLayout1);
		setContentView(scroll);
 
	}
 
	private void munculListDialog(int pos) {
		// TODO Auto-generated method stub
 
		noSoal = pos;
		// Toast.makeText(getApplicationContext(), String.valueOf(pos),
		// Toast.LENGTH_SHORT).show();
		int numAns = arritems.length;// sama dengan jumlah soal
		int numChoiceAns = arritems[pos].length;// a b c d
		// Toast.makeText(getApplicationContext(),
		// String.valueOf(arritems.length), Toast.LENGTH_SHORT).show();
		final CharSequence[] opsia = new CharSequence[numChoiceAns];
		for (int i = 0; i < numChoiceAns; i++) {
			opsia[i] = arritems[pos][i];
		}
		AlertDialog.Builder kk = new AlertDialog.Builder(this);
		kk.setTitle("Pilih Jawaban");
		kk.setItems(opsia, new DialogInterface.OnClickListener() {
 
			@Override
			public void onClick(DialogInterface dialog, int which) {
				// TODO Auto-generated method stub
				sJwban = arritems[noSoal][which];
				tvJwb[noSoal].setText(sJwban);
				jwbanUser[noSoal] = which+1;
			}
		}).show();
 
	}
 
	public void hitung() {
		for (int n = 0; n < jwbanUser.length; n++) {
			Log.d("jwbanUser[n]== jwbanUser[n])",
					String.valueOf(jwbanUser[n] + "==" + jwb[n]));
			if (jwbanUser[n] != jwb[n]) {
				salah++;
			}else{
				benar++;
			}
		}
		Log.d("salah", String.valueOf(salah));
		tHasil.setText("Jumlah jawaban salah : "+salah+"\n" +
				"Jumlah jawaban benar :"+benar);
		salah=0;
		benar=0;
	}
}
