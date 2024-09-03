import '@testing-library/jest-dom'
import { render, screen } from '@testing-library/react'
import Page from '@/app/page'

describe('Home', () => {
    render(<Page />);
    const heading = screen.getByRole('heading', { level: 1 });

    it('tests if h1 is present', () => {
        expect(heading).toBeInTheDocument();  
    });

    it('tests if h1 contains the correct text', () => {
        expect(heading.innerHTML).toBe('Bienvenido a la página de control horario de SAE-Innova y Esférico');
    });
})