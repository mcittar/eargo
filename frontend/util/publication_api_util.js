export const scrapePublications = () => {
  return $.ajax({
    method: 'GET',
    url: 'publications'
  });
};
