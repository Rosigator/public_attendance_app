import type { Metadata } from 'next';
import { Inter } from 'next/font/google';
import './globals.scss';
import styles from './RootLayout.module.scss';

const inter = Inter({ subsets: ["latin"] });

export const metadata: Metadata = {
  title: "My Plant Collection",
  description: "The website for Plant Collectors",
};

type RootLayoutProps = Readonly<{ children: React.ReactNode }>

export default function RootLayout({ children }: RootLayoutProps) {
  return (
    <html lang="en">
      <body className={`${inter.className} ${styles.RootLayout}`}>{children}</body>
    </html>
  );
}
