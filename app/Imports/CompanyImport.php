<?php

namespace App\Imports;

use App\Company;
use Maatwebsite\Excel\Concerns\ToModel;

class CompanyImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Company([
            //
            'name' => $row[1],
            'region' => $row[2],
            'country' => $row[3],
            'company_role' => $row[4],
            'business_model' => $row[5],
            'status' => $row[6],
            'est_date' => $row[7],
            'type' => $row[8],
            'customer_type' => $row[9],
            'shareholder' => $row[10],
            'alliance' => $row[11],
            'MRO' => $row[12],
            'fleet_size' => $row[13],
            'destination' => $row[14],
            'customer_since' => $row[15],
        ]);
    }
}
