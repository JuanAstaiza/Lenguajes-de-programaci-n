import java.awt.Button;
import java.awt.Cursor;
import java.awt.FlowLayout;
import java.awt.Panel;
import java.awt.TextField;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.util.ArrayList;

import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

public class Prueba extends JFrame {

	private JPanel contentPane;
	private ArrayList<Character> palabra = new ArrayList<Character>();
	private ArrayList<Character> charsCorrectos = new ArrayList<Character>();
	private ArrayList<Character> charsIntroducidos = new ArrayList<Character>();
	private static String palabraClave;
	private static int limiteSize = 10;
	private JLabel lblPalabra, lblPenjat;
	private boolean primeraRonda = true;
	private int contFoto = 1;
	private int contRondas = 0;
        Button Q,W,E,R,T,Y,U,I,O,P;
        Button A,S,D,F,G,H,J,K,L;
        Button Z,X,C,V,B,N,M;
        TextField pantalla;
        Panel p1,p2,p3,p4;
        double r;
        int num[] = new int[10];
        int sim,x,y;
        int i=0;

	
	public static void main(String[] args) {
		Prueba main = new Prueba();
		main.setVisible(true);

	}
        public Prueba(String tit) {
        super(tit);
        pantalla = new TextField(10);
        Q = new Button("q");
        W = new Button("w");
        E = new Button("e");
        R = new Button("r");
        T = new Button("t");
        Y = new Button("y");
        U = new Button("u");
        I = new Button("i");
        O = new Button("o");
        P = new Button("p");
        A = new Button("a");
        S = new Button("s");
        D = new Button("d");
        F = new Button("f");
        G = new Button("g");
        H = new Button("h");
        J = new Button("j");
        K = new Button("k");
        L = new Button("n");
        Z = new Button("z");
        X = new Button("x");
        C = new Button("c");
        V = new Button("v");
        B = new Button("b");
        N = new Button("n");
        M = new Button("m");
        p1 = new Panel();
        p2 = new Panel();
        p3 = new Panel();
        p4 = new Panel();
        
        p2.add(Q);
        p2.add(W);
        p2.add(E);
        p2.add(R);
        p2.add(T);
        p2.add(Y);
        p2.add(U);
        p2.add(I);
        p2.add(O);
        p2.add(P);
        
        p3.add(A);
        p3.add(S);
        p3.add(D);
        p3.add(F);
        p3.add(G);
        p3.add(H);
        p3.add(J);
        p3.add(K);
        p3.add(L);
        p3.add(N);
        
        p4.add(Z);
        p4.add(X);
        p4.add(C);
        p4.add(V);
        p4.add(B);
        p4.add(N);
        p4.add(M);
        
        setLayout(new FlowLayout());
        
        add(pantalla);
        add(p3);
        add(p2);
        add(p1);
        add(p4);
        
        resize(200,300);
        show();
        
    }

	private boolean comprueba(String palabra) {
		if (palabra.length() < limiteSize)
			return true;
		else {
			JOptionPane.showMessageDialog(this,
					"Error, introduce una palabra de menos de " + limiteSize
							+ " carA!cteres");
			return false;
		}
	}

	public Prueba() {

		recogePalabra();

		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 280, 430);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		setLocationRelativeTo(null);

		ImageIcon icon = new ImageIcon("imgs/foto" + contFoto + ".png");
		lblPenjat = new JLabel("New label");
		lblPenjat.setBounds(10, 10, 250, 310);
		lblPenjat.setIcon(icon);
		contentPane.add(lblPenjat);

		lblPalabra = new JLabel("Palabra");
		lblPalabra.setBounds(33, 344, 240, 15);
		contentPane.add(lblPalabra);
		
		
		icon = new ImageIcon("imgs/arrow2.png");
		JLabel lblNext = new JLabel("");
		lblNext.setBounds(190, 344, 70, 45);
		lblNext.setIcon(icon);
		contentPane.add(lblNext);
		lblNext.addMouseListener(new MouseListener() {
			
			
			public void mouseReleased(MouseEvent arg0) {
				
				
			}
			
			
			public void mousePressed(MouseEvent arg0) {
				askForChar();
				
			}
			
		
			public void mouseExited(MouseEvent arg0) {
				setCursor(Cursor.DEFAULT_CURSOR);
				
			}
			
			
			public void mouseEntered(MouseEvent arg0) {
				setCursor(Cursor.HAND_CURSOR);
				
			}
			
			
			public void mouseClicked(MouseEvent arg0) {
				
				
			}
		});
		
		setArrayInit();
		setLetrasPalabra();
		setVisible(true);

	}

	private void askForChar() {

					if(contFoto<5){
					String s = JOptionPane
							.showInputDialog("Introduce el siguiente caracter:");
					Character c = s.charAt(0);
					charsIntroducidos.add(c);
					setLetrasPalabra();
					}else{
						JOptionPane.showMessageDialog(this, "Lo sentimos. Se acabo!");
						System.exit(0);
					}

				
	}

	private void setArrayInit() {
		char[] palabraToArray = palabraClave.toCharArray();
		for (int i = 0; i < palabraClave.length(); i++) {
			palabra.add(palabraToArray[i]);
		}

	}

	private void setLetrasPalabra() {
		String textoLabelFrame = "";
		int sizeAntes = charsCorrectos.size();

		boolean palabraEncontrada = true;
		for (Character c : palabra) {
			
			if (charsIntroducidos.contains(c)) {
				textoLabelFrame += " " + c + " ";
				if (!charsCorrectos.contains(c)) {
					charsCorrectos.add(c);
				}
			} else{
				textoLabelFrame += " _ ";
				palabraEncontrada = false;
			}
			
		}

		if (primeraRonda) {
			primeraRonda = false;
		} else {
			int sizeDespues = charsCorrectos.size();
			if (!(sizeAntes != sizeDespues)) {
				contFoto++;
				ImageIcon icon = new ImageIcon("imgs/foto" + contFoto + ".png");
				lblPenjat.setIcon(icon);
			}

		}

		lblPalabra.setText(textoLabelFrame);
		
		//Si la palabra se muestra , lo incamos y cerramos la aplicacion.
		if(palabraEncontrada){
			JOptionPane.showMessageDialog(this, "CORRECTO!!!");
			System.exit(0);
		}

	}

	private void recogePalabra() {
		try {
			boolean correcto = false;
			while (!correcto) {
				palabraClave = JOptionPane
						.showInputDialog("Introduce la palabra a descubrir:");

				correcto = comprueba(palabraClave);

			}

		} catch (Exception e) {
			e.printStackTrace();
			palabraClave = JOptionPane
					.showInputDialog("Introduce solo caracteres.");
		}

	}
}