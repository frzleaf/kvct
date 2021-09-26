// Quai vat tieu diet x2
// Cong hien bang hoi x2
// Uy danh, tinh hash, Chu y khong duoc vuot qua 150k/tran
// Nang dong tich luy: tran truoc /3 + tran nay x2
// Nang dong x2
// Skill x2
// Danh vong trang bi hash
// Trang bi dong hanh, x2, tong x2
// Thoi gian so phut: hash va x2
// Danh bo lenh x2

// Chai65 = 391811196968
// VIPCODE: -vip 3F8666174E6GCF792299C637DEG
// PASS: 391466

function nangdongwish(nang_dong_trong_tran, tong_nang_dong_mong_muon){
    return [nang_dong_trong_tran * 2, (tong_nang_dong_mong_muon - nang_dong_trong_tran) * 3]
}

// Tính hash nnht
function tinhhashnhht(nhht_mong_muon, salt) {
    return nhht_mong_muon*2 + salt
}

// Tính hash nnht
function tinhhashchankhi(chankhi, salt) {
    return chankhi*2 + salt
}


// Tính salt = 8276
function tinhsaltnhht(nhht_hash, nhht_hientai) {
    return (nhht_hash - nhht_hientai) / 2
}

// Tính chặn trên dưới của nhht
function bound_nhht(nhht_hientai){
    return [nhht_hientai * 2 + 1111, nhht_hientai * 2 + 9999]   
}

function hash_huyentinh(tongcachatht) {
    return tongcachatht * 2
}

function hash_manhviemde(manhhienthi){
    return manhhienthi * 6
}

function bound_danhvong(real){
    return [real * 2 + 1111, real * 2 + 9999]
}

function hash_danhvong(mongmuon, salt){
    return mongmuon * 2 + salt;
}

function hide_danhbolenh(danhbolenh_display){
    return danhbolenh_display * 2;
}

function hide_pet_exp(exp){
    return exp * 3;
}

function hide_pet_equipment(equip_exp, all_equp_exp){
    return [equip_exp * 2, all_equp_exp.reduce( (a, b) => a + b, 0)];
}

function hide_matna(matna){
    return matna * 3;
}

function hide_guild_exp(exp){
    return exp * 2;
}


function diemnangdong(tichluy_tran_truoc, nangdong){

}