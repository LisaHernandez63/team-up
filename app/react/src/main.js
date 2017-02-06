let name = "";
let description = ""
  fetch('https://wger.de/api/v2/exercise/')
    .then(response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
            error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => response.json())
    .then(body => {
      console.log(body);
      console.log(body.results.name);
      console.log(body.results.description);
      element = document.getElementById('main');
      element.innerHTML +=
       `Temperature: ${body.results.name} and ${body.results.description}`;
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
