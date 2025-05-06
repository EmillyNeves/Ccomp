// Define API base URL - defaults to local development
// In production, Vercel will handle the API routing correctly
const apiBaseUrl = process.env.NODE_ENV === 'production' 
  ? '' // Empty string means same domain
  : '';

export default {
  apiBaseUrl
};