import type { Metadata } from 'next';
//import { Inter } from 'next/font/google';
import './globals.scss';

// const inter = Inter({ subsets: ["latin"] });

export const metadata: Metadata = {
  title: "Horario SAE - Esférico",
  description: "Control horario para SAE-Innova y Esferico",
};

type RootLayoutProps = Readonly<{ children: React.ReactNode }>

export default function RootLayout({ children }: RootLayoutProps) {
  return (
    <html lang="es">
      <body>{children}</body>
    </html>
  );
}
