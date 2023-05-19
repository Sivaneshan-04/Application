// this function creates a promise
function promiseFunciton() {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      const data = 'some data';
      //const data = null;

      //resolving the promise
      if(data !== null)
          resolve(data);
      // Rejecting the promise
      else
           reject(new Error('no data'));
    }, 5000); // Simulating a delay of 5 seconds
  });
}

// Using the promise created
promiseFunciton()
  .then(() => {
    console.log('Success'); 
  })
  .catch(() => {
    console.error('error'); 
  });
