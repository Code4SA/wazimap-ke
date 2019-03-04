import React from 'react';
import PropTypes from 'prop-types';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import herobg from '../../assets/images/bg/hero_bg.png';
import background from '../../assets/images/bg/background.png';
import smallscreenbackground from '../../assets/images/bg/smallscreen_background.png';
import HeroMap from './HeroMap';

const styles = theme => ({
  root: {
    flexGrow: 1,
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover'
  },
  heroContentGrid: {
    flexGrow: 1,
    backgroundImage: `url(${herobg})`,
    backgroundRepeat: 'no-repeat',
    backgroundPosition: 'center',
    backgroundSize: 'auto',
    height: '100vh',
    [theme.breakpoints.down('lg')]: {
      height: '80vh',
      paddingLeft: theme.spacing.unit * 14.5
    },
    [theme.breakpoints.down('sm')]: {
      backgroundImage: `url(${smallscreenbackground})`,
      backgroundPosition: 'right top',
      height: 500,
      margin: 0
    }
  }
});

function HomeHero({ classes }) {
  return (
    <Grid container item xs={12} className={classes.root}>
      <Grid
        container
        direction="row"
        justify="center"
        className={classes.heroContentGrid}
      >
        <Grid item sm={12} md={8} lg={8} xl={8}>
          <HeroMap />
        </Grid>
        <Grid item sm={12} md={4} lg={4} xl={4} alignItems="center">
          <HeroMap />
        </Grid>
      </Grid>
    </Grid>
  );
}

HomeHero.propTypes = {
  classes: PropTypes.shape().isRequired
};

export default withStyles(styles)(HomeHero);
