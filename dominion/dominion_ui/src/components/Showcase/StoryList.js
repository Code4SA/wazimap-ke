import React from 'react';
import PropTypes from 'prop-types';

import { Grid, GridList, GridListTile } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import StoryCard from './StoryCard';

const styles = theme => ({
  root: {
    flexGrow: 1,
    [theme.breakpoints.up('md')]: {
      width: '59.625rem'
    },
    [theme.breakpoints.up('lg')]: {
      width: '80rem'
    }
  },
  gridListRoot: {
    display: 'flex',
    flexWrap: 'wrap',
    justifyContent: 'space-around',
    overflow: 'hidden',
    width: '100vw',
    height: '100%',
    [theme.breakpoints.up('md')]: {
      width: '80rem'
    }
  },
  gridList: {
    flexWrap: 'nowrap',

    // TODO(nyokabi): Material-ui documentation for Grid list componenet
    //                Promote the list into his own layer on Chrome. This cost
    //                memory but helps keeping high FPS.
    transform: 'translateZ(0)',
    paddingBottom: '3.0625rem' // 49px / 16
  },
  gridListTile: {
    display: 'flex',
    alignItems: 'strech',
    width: '100vw',
    [theme.breakpoints.up('md')]: {
      width: '20rem'
    }
  }
});

function StoryList({ classes, storyData }) {
  // TODO(kilemensi): GridListTile computes the size of item and sets it using
  //                  style. This means we can't use classes since element
  //                  style has higher preference. Hence the use of style here.
  //                  We need to match exact size of StoryCard so we don't end
  //                  up with a lot of spaces around StoryCard.
  return (
    <Grid
      container
      justify="center"
      alignItems="center"
      className={classes.root}
    >
      <Grid item xs={12} container justify="flex-start" alignItems="center">
        <div className={classes.gridListRoot}>
          <GridList className={classes.gridList}>
            {storyData.map(story => (
              <GridListTile
                key={story.index}
                classes={{ tile: classes.gridListTile }}
                style={{
                  height: '100%',
                  width: classes.gridListTile.width
                }}
              >
                <StoryCard story={story} />
              </GridListTile>
            ))}
          </GridList>
        </div>
      </Grid>
    </Grid>
  );
}

StoryList.propTypes = {
  classes: PropTypes.shape().isRequired,
  storyData: PropTypes.shape().isRequired
};

export default withStyles(styles)(StoryList);
