function execute(url) {
    const doc = Http.get(url + "/").html();
    var coverImg = doc.select("#fmimg img").first().attr("src");
    if (coverImg.startsWith("//")) {
        coverImg = "https:" + coverImg;
    }
    return Response.success({
        name: doc.select("#info h1").text(),
        cover: coverImg,
        author: doc.select("#info p").first().text().replace(/作\s*者：/g, ""),
        description: doc.select("#intro").text(),
        detail: doc.select("#info p").html(),
        host: "https://www.biqubu.com"
    });
}