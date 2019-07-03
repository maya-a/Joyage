
function handleLoading(){
  const form = document.querySelector('#new_search');
  let loading = true;

   async function handleForm(e) {
    e.preventDefault();
    let body = new FormData(form);
    try {

      let res = await fetch('/searches', {
        method: 'POST',
        headers: {
          'X-CSRF-Token': getMetaValue('csrf-token'),
        },
        body,
      })


      loading = false;

      let data = await res.json();

      debugger
      if(res.status === 200 && !loading) {
        window.location.href(`/searches/${data.search_id}/trips`);
      }



    }

    catch {
      alert('something didnt work');
      window.location.href('/');
    }

  }

  function getMetaValue(name) {
    const element = document.head.querySelector(`meta[name="${name}"]`);
    return element.getAttribute('content');
  }

  form.addEventListener('submit', handleForm)
}

handleLoading();
