<style>
.preview {
  color: white;
  text-align: center;
  padding: 0 30px;
  position: relative;
  background-size: 100% 100%;
  background-image: url({{$image}});
}
.preview-text {
  position: absolute;
  top: 20%;
}
</style>
<h1>Hi, {{ $name }}</h1>
<p>Information Example for {{$type}}</p>
 <div
    class="preview"
    >
    <div class="preview-text">
        <h2>Happy Birthday</h2>
        <h4>Customer Name</h4>
        <p>Wishing you a wonderful birthday and a year filled with success</p>
    </div>
</div>