import React, { Component } from 'react';
import PropTypes from 'prop-types';

import { Grid } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import withWidth, { isWidthDown } from '@material-ui/core/withWidth';

import background from '../../assets/images/bg/background.png';
import search from '../../assets/images/icons/location.svg';

import SearchBar from '../Search/SearchBar';
import SearchResults from '../Search/SearchResults';
import Modal from '../Modal';

import createAPI from '../../api';

const styles = theme => ({
  root: {
    flexGrow: 1,
    padding: theme.spacing.unit * 4,
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover',
    [theme.breakpoints.up('lg')]: {
      paddingTop: '100px',
      paddingLeft: '200px',
      paddingRight: '200px'
    },
    [theme.breakpoints.up('md')]: {
      paddingTop: '50px',
      paddingLeft: '185px',
      paddingRight: '185px'
    }
  },
  searchBar: {
    [theme.breakpoints.down('sm')]: {
      borderBottom: '2px solid white'
    }
  },
  resultsContainer: {
    [theme.breakpoints.up('sm')]: {
      padding: '47px'
    }
  }
});

class Search extends Component {
  constructor(props) {
    super(props);

    this.state = {
      geography: [],
      results: []
    };

    this.handleSearch = this.handleSearch.bind(this);
  }

  async componentDidMount() {
    const api = createAPI();
    // South Africa id: 5656
    const geography = await api.getGeography(5656);

    this.setState({
      geography
    });
  }

  handleSearch(value) {
    const { geography } = this.state;
    if (value !== '') {
      const results = geography.filter(g => g.name.match(value));
      this.setState({ results });
    } else {
      this.setState({ results: [] });
    }
  }

  render() {
    const { classes, width, children } = this.props;
    const { results, closeModal } = this.state;

    const SearchBarElement = ({ onToggle }) => (
      <Grid container sm={12} wrap="nowrap" className={classes.searchBar}>
        <SearchBar onSearch={this.handleSearch} onToggle={onToggle} />
      </Grid>
    );
    const ResultsElement = (
      <Grid container sm={12} className={classes.resultsContainer}>
        <SearchResults results={results} />
      </Grid>
    );
    const SearchModalContent = ({ toggleModal }) => (
      <Grid container direction="column" wrap="nowrap" className={classes.root}>
        <SearchBarElement onToggle={toggleModal} />
        {ResultsElement}
      </Grid>
    );
    return (
      <React.Fragment>
        {isWidthDown('sm', width) ? (
          <React.Fragment>
            <SearchBarElement />
            {results.length > 0 ? ResultsElement : children}
          </React.Fragment>
        ) : (
          <React.Fragment>
            <Modal
              activatorLabel="Search"
              activatorIconOpen={search}
              activatorIconClose={search}
              close={closeModal}
            >
              <SearchModalContent />
            </Modal>
            {children}
          </React.Fragment>
        )}
      </React.Fragment>
    );
  }
}

Search.propTypes = {
  width: PropTypes.isRequired,
  classes: PropTypes.isRequired,
  children: PropTypes.isRequired
};

export default withWidth()(withStyles(styles)(Search));
