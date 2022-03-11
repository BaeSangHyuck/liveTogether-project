function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

	$({ val : 0 }).animate({ val : 24 }, {
  duration: 1500,
  step: function() {
    var num = numberWithCommas(Math.floor(this.val));
    $(".bedsCount").text(num + "개");
  },
  complete: function() {
    var num = numberWithCommas(Math.floor(this.val));
    $(".bedsCount").text(num + "개");
  }
});

	$({ val : 0 }).animate({ val : 24 }, {
  duration: 1500,
  step: function() {
    var num = numberWithCommas(Math.floor(this.val));
    $(".residentCount").text(num + "명");
  },
  complete: function() {
    var num = numberWithCommas(Math.floor(this.val));
    $(".residentCount").text(num + "명");
  }
});

	$({ val : 0 }).animate({ val : 116000 }, {
  duration: 3000,
  step: function() {
    var num = numberWithCommas(Math.floor(this.val));
    $(".investCount").text(num + "원");
  },
  complete: function() {
    var num = numberWithCommas(Math.floor(this.val));
    $(".investCount").text(num + "원");
  }
});