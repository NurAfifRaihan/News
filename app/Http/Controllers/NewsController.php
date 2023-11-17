<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\News;
class NewsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        # menggunakan model News untuk select data
		$news = News::all();

		if (!empty($news)) {
			$response = [
				'message' => 'Menampilkan Data Semua Berita',
				'data' => $news,
			];
			return response()->json($response, 200);
		} else {
			$response = [
				'message' => 'Data tidak ada'
			];
			return response()->json($response, 200);
		}
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        #validate
        $validateData = $request->validate([
            'title' => 'required',
            'author' => 'required',
            'description' => 'required',
            'content' => 'required',
            'url' => 'required',
            'url_image' => 'required',
            'published_at' => 'required',
            'category' => 'required',
        ]);

        $student = News::create($validateData);

        $news = News::create($request->all());

		$response = [
			'message' => 'Data berita Berhasil Dibuat',
			'data' => $news,
		];

		return response()->json($response, 201);
	
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $news = News::find($id);

		if ($news) {
			$response = [
				'message' => 'Get detail news',
				'data' => $news
			];
	
			return response()->json($response, 200);
		} else {
			$response = [
				'message' => 'Data not found'
			];
			
			return response()->json($response, 404);
		}
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    public function  cari($category)
    {
        $validCategories = ['politik', 'sports', 'technology', 'Fenomena', 'finance', 'automotive']; // Daftar kategori yang valid

    if (!in_array($category, $validCategories)) {
        return response()->json(['message' => 'Invalid category'], 400);
    }
        $news = News::where('category', $category)->get();

        if ($news->isEmpty()) {
            return response()->json(['message' => 'No news found for the given category'], 404);
        }

        return response()->json(['message' => 'Success', 'data' => $news]);
    }

    //memanggil menggunakan title
    public function search( $title)
    {

    $news = News::where('title', $title  )->get();

    if ($news->isEmpty()) {
        return response()->json(['message' => 'No news found for the given title'], 404);
    }

    return response()->json(['message' => 'Success', 'title' => $news]);
    }   

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $news = News::find($id);

		if ($news) {
			$response = [
				'message' => 'News is updated',
				'data' => $news->update($request->all())
			];
	
			return response()->json($response, 200);
		} else {
			$response = [
				'message' => 'Data not found'
			];

			return response()->json($response, 404);
		}
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $news = News::find($id);

		if ($news) {
			$response = [
				'message' => 'news is delete',
				'data' => $news->delete()
			];

			return response()->json($response, 200); 
		} else {
			$response = [
				'message' => 'Data not found'
			];

			return response()->json($response, 404);
		}
    }
}
