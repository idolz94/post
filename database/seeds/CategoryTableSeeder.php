<?php

use Illuminate\Database\Seeder;

class CategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('categories')->delete();

        $category =[ 
            [
              'name'=> "Phong Thủy",
            ],
            [
                'name'=>"Tài Lộc",
            ],
      
          ];
          DB::table('categories')->insert($category);
    }
}
