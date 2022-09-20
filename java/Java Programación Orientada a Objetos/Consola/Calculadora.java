import java.awt.*;  //Librería grafica

public class Calculadora extends Frame {
	
	Button b0,b1,b2,b3,b4,b5,b6,b7,b8,b9;
	Button bmas,bmenos,bprod,bdiv,bigual; 
	Button bc,boff,bon,b00;
	TextField pantalla;	 
	Panel p1,p2,p3,p4,p5;
	double r;
	int num[] = new int[10];
	int sim,y,x;
	int i=0;
	
	Calculadora(String tit){
		
		super(tit);
		pantalla = new  TextField(10);
		b0 = new Button("0");
		b1 = new Button("1");
		b2 = new Button("2");
		b3 = new Button("3");
		b4 = new Button("4");
		b5 = new Button("5");
		b6 = new Button("6");
		b7 = new Button("7");
		b8 = new Button("8");
		b9 = new Button("9");
	
		bmas = new Button("+");
		bmenos = new Button("-");
		bprod = new Button("*");
		bdiv = new Button("/");
		bigual = new Button("=");
		
		bc = new Button("C");
		boff = new Button("Off");
		bon = new Button("On");
		
		p1 = new Panel();
		p2 = new Panel();
		p3 = new Panel();
		p4 = new Panel();
		p5 = new Panel();
		
		p1.add(b1);
		p1.add(b2);
		p1.add(b3);
		p1.add(bmenos);
		
		p2.add(b4);
		p2.add(b5);
		p2.add(b6);
		p2.add(bprod);
		
		p3.add(b7);
		p3.add(b8);
		p3.add(b9);
		p3.add(bdiv);
		
		p4.add(b0);
		p4.add(bc);
		p4.add(bmas);
		p4.add(boff);
		
		p5.add(bon);
		p5.add(bigual);
		
		setLayout(new FlowLayout());
		add(pantalla);
		add(p3);
		add(p2);
		add(p1);
		add(p4);
		add(p5);
		
		resize(200,300);
		show();
		
	}
	public void action(Event e){
		if(e.target == b1){
			y=1; 	
			pantalla.setText(pantalla.getText()+Integer.toString(y));			
		}else if(e.target == b2){
			pantalla.setText(pantalla.getText()+"2");		
		}else if(e.target == b3){
			pantalla.setText(pantalla.getText()+"3");		
		}else if(e.target == b4){
			pantalla.setText(pantalla.getText()+"4");		
		}else if(e.target == b5){
			pantalla.setText(pantalla.getText()+"5");		
		}else if(e.target == b6){
			pantalla.setText(pantalla.getText()+"6");		
		}else if(e.target == b7){
			pantalla.setText(pantalla.getText()+"7");		
		}else if(e.target == b8){
			pantalla.setText(pantalla.getText()+"8");		
		}else if(e.target == b9){
			pantalla.setText(pantalla.getText()+"9");		
		}else if(e.target == b0){
			pantalla.setText(pantalla.getText()+"0");		
		}else if(e.target == bc){
			pantalla.setText("0");	
			pantalla.setText("");
		}else if(e.target == boff){
			pantalla.enable(false);	
		}else if(e.target == bon){
			pantalla.enable(true);	
		}else if(e.target == bmas){
			suma();		
		}else if(e.target == bmenos){
			resta();		
		}else if(e.target == bprod){
			multiplicacion();		
		}else if(e.target == bdiv){
			division();		
		}else if(e.target == bigual){
			resultado();		
		}	
}
	
	public void suma(){
		sim=1;
		num[i] = Integer.parseInt(pantalla.getText());
		i++;
		pantalla.setText("");
	}
	
	public void resta(){
		sim=2;
		num[i] = Integer.parseInt(pantalla.getText());
		i++;
		pantalla.setText("");
	}
	
	public void multiplicacion(){
		sim=3;
		num[i] = Integer.parseInt(pantalla.getText());
		i++;
		pantalla.setText("");
	}
	
	public void division(){
		sim=4;
		num[i] = Integer.parseInt(pantalla.getText());
		i++;
		pantalla.setText("");
	}
	
	public void resultado(){
		if(sim == 1){
			num[i]=Integer.parseInt(pantalla.getText());
			x = num[i-1]+num[i];
			pantalla.setText(Integer.toString(x));
			num[i]=x;			
		}else if(sim == 2){
			num[i]=Integer.parseInt(pantalla.getText());
			x = num[i-1]-num[i];
			pantalla.setText(Integer.toString(x));
			num[i]=x;	
		}else if(sim == 3){
			num[i]=Integer.parseInt(pantalla.getText());
			x = num[i-1]*num[i];
			pantalla.setText(Integer.toString(x));
			num[i]=x;	
		}else if(sim == 4){
			num[i]=Integer.parseInt(pantalla.getText());
			x = num[i-1]/num[i];
			pantalla.setText(Integer.toString(x));
			num[i]=x;	
		}
		
	}

	public boolean handleEvent(Event e){
		if(e.id == Event.ACTION_EVENT){
			action(e);
			return true;
		}else if(e.id == Event.WINDOW_DESTROY){
			hide();
			dispose();
			System.exit(0);
		}
		return super.handleEvent(e);
	}
	
	public static void main(String[] args){
		Calculadora mical;
		mical = new Calculadora("Fx 3000");

	}//Cierra el metodo de void main
	
} //llave de la clase
