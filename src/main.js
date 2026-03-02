import './style.css';
import { Application } from '@splinetool/runtime';

const canvas = document.getElementById('canvas3d');
const app = new Application(canvas);

// Load the local .spline model
app.load('/cyber_mannequin.spline')
  .then(() => {
    // Hide loading screen when model is fully loaded
    const loadingScreen = document.getElementById('loading');
    if (loadingScreen) {
      loadingScreen.style.opacity = '0';
      setTimeout(() => {
        loadingScreen.style.display = 'none';
      }, 500);
    }
  })
  .catch(err => {
    console.error('Error loading Spline model:', err);
    // Hide loading screen even if there is an error
    const loadingScreen = document.getElementById('loading');
    if (loadingScreen) {
      loadingScreen.style.opacity = '0';
      setTimeout(() => {
        loadingScreen.style.display = 'none';
      }, 500);
    }
  });

// Handle "Get Started" button click
const getStartedBtn = document.getElementById('getStartedBtn');
if (getStartedBtn) {
  getStartedBtn.addEventListener('click', () => {
    // Navigate to the main page
    window.location.href = '/main.html';
  });
}
