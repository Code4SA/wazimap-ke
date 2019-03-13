import React from 'react';
import ReactDOM from 'react-dom';

import { library } from '@fortawesome/fontawesome-svg-core';
import { fab } from '@fortawesome/free-brands-svg-icons';

import withRoot from './withRoot';

import {
  HomePageHeader,
  CountryPageHeader,
  ProfilePageHeader,
  ComparePageNav
} from './components/Header';
import Header from './components/Header/Header';
import { AboutCountry, AboutDominion } from './components/About';
import Data from './components/Data';
import Footer from './components/Footer';
import Partners from './components/Partners';
import ProfileTabs from './components/ProfileTabs';
import Showcase from './components/Showcase';
import Video from './components/Video';

library.add(fab);

const renderApp = (Component, id) => {
  const el = document.getElementById(id);
  if (el) {
    const App = withRoot(Component);

    ReactDOM.render(<App />, el);
  }
};

renderApp(HomePageHeader, 'dominionHomePageHeader');
renderApp(CountryPageHeader, 'dominionCountryPageHeader');
renderApp(ProfilePageHeader, 'dominionProfilePageHeader');
renderApp(ComparePageNav, 'dominionComparePageNav');
renderApp(Header, 'dominionComparePageNaav');
renderApp(AboutCountry, 'dominionCountryAbout');
renderApp(ProfileTabs, 'dominionProfileTabs');
renderApp(Video, 'dominionVideo');
renderApp(Showcase, 'dominionShowcase');
renderApp(Data, 'dominionData');
renderApp(AboutDominion, 'dominionAbout');
renderApp(Partners, 'dominionPartners');
renderApp(Footer, 'dominionFooter');
