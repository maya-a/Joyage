
function handleLoading(){
  const form = document.querySelector('#new_search');
  let loading = true;

   async function handleForm(e) {
    e.preventDefault();

    let container = document.querySelector('#show-container');

    container.innerHTML = `
    <span class="loading-style">
    <h1>Cool shit is happening</h1>
    <div id="plane">
      <div id="flaps"></div>
      <div id="head"></div>
      <div id="propeller">
        <span></span>
        <span></span>
        <span></span>
      </div>
      <div id="landing-gear">
        <span></span>
        <span></span>
        <span></span>
      </div>
    </div>
    </span>`;


    let body = new FormData(form);

    try {

      let res = await fetch('/searches', {
        method: 'POST',
        headers: {
          'X-CSRF-Token': getMetaValue('csrf-token'),
        },
        body,
      })



      let data = await res.json();

      loading = false;


      if(!loading) {
        window.location.pathname = `/searches/${data.search_id}/trips`;
      }



    }

    catch {
      window.location.pathname =  '/';
      alert('You must type in the correct information');
    }

  }

  function getMetaValue(name) {
    const element = document.head.querySelector(`meta[name="${name}"]`);
    return element.getAttribute('content');
  }

  form.addEventListener('submit', handleForm)
}

handleLoading();
