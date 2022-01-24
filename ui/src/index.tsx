import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';

import {
  ApolloClient,
  InMemoryCache,
  ApolloProvider,
  // useQuery,
  // gql
} from "@apollo/client";

// setup apollo client to talk to graphql server
const client = new ApolloClient({
  uri: 'localhost:3000/graphql',
  cache: new InMemoryCache()
});

// kick off the whole adventure by rendering the app
ReactDOM.render(
  <React.StrictMode>
    <ApolloProvider client={client}>
      <App />
    </ApolloProvider>
  </React.StrictMode>,
  document.getElementById('root')
);