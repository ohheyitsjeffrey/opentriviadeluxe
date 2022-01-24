import React from 'react';
import { render, screen } from '@testing-library/react';
import App from './App';

// this test is worthless, its here to verify CI and shit is set up, it should be removed once real tests are written
test('renders coming soon', () => {
  render(<App />);
  const element = screen.getByText(/Coming Soon/i);
  expect(element).toBeInTheDocument();
});
