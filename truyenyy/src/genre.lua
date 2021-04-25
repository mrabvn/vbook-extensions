local doc = html:parse("<div class=\"row\"><div class=\"col\"><ul class=\"multi-column-dropdown\"><a href=\"/truyen-huyen-huyen/\">Huyền Huyễn</a><a href=\"/truyen-kiem-hiep/\">Kiếm Hiệp</a><a href=\"/truyen-lich-su/\">Lịch Sử</a><a href=\"/truyen-ngon-tinh/\">Ngôn Tình</a><a href=\"/truyen-sac-hiep/\">Sắc Hiệp</a><a href=\"/truyen-tien-hiep/\">Tiên Hiệp</a><a href=\"/truyen-di-gioi/\">Dị Giới</a><a href=\"/truyen-do-thi/\">Đô Thị</a><a href=\"/truyen-huyen-ao/\">Huyền Ảo</a><a href=\"/truyen-trinh-tham/\">Trinh Thám</a><a href=\"/truyen-co-dai/\">Cổ Đại</a><a href=\"/truyen-he-thong/\">Hệ Thống</a><a href=\"/truyen-khoa-huyen/\">Khoa Huyễn</a><a href=\"/truyen-quan-su/\">Quân Sự</a><a href=\"/truyen-vong-du/\">Võng Du</a><a href=\"/truyen-xuyen-khong/\">Xuyên Không</a><a href=\"/truyen-co-tien-hiep/\">Cổ Tiên Hiệp</a><a href=\"/truyen-dam-my/\">Đam Mỹ</a><a href=\"/truyen-huyen-bi/\">Huyền Bí</a><a href=\"/truyen-ky-huyen/\">Kỳ Huyễn</a><a href=\"/truyen-linh-di/\">Linh Dị</a><a href=\"/truyen-huyen-huyen-ma-phap/\">Ma Pháp</a><a href=\"/truyen-mat-the/\">Mạt Thế</a><a href=\"/truyen-quan-truong/\">Quan Trường</a><a href=\"/truyen-the-thao/\">Thể Thao</a><a href=\"/truyen-tu-chan-tieu-thuyet/\">Tu Chân</a><a href=\"/truyen-hien-dai/\">Hiện Đại</a><a href=\"/truyen-bach-hop/\">Bách Hợp</a><a href=\"/truyen-binh-dam/\">Bình Đạm</a><a href=\"/truyen-canh-ky/\">Cạnh Kỹ</a><a href=\"/truyen-cung-dau/\">Cung Đấu</a><a href=\"/truyen-sac/\">Đặc Sắc</a><a href=\"/truyen-dien-van/\">Điền Văn</a><a href=\"/truyen-di-nang/\">Dị Năng</a><a href=\"/truyen-doan-van/\">Đoản Văn</a><a href=\"/truyen-dong-nhan/\">Đồng Nhân</a><a href=\"/truyen-dong-phuong/\">Đông Phương</a><a href=\"/truyen-gia-dau/\">Gia Đấu</a><a href=\"/truyen-hai-huoc/\">Hài Hước</a><a href=\"/truyen-hong-hoang/\">Hồng Hoang</a><a href=\"/truyen-khac/\">Khác</a><a href=\"/truyen-light-novel/\">Light Novel</a><a href=\"/truyen-nguoc/\">Ngược</a><a href=\"/truyen-nhan-huu/\">Nhàn Hưu</a><a href=\"/truyen-nu-cuong/\">Nữ Cường</a><a href=\"/truyen-nu-hiep/\">Nữ Hiệp</a><a href=\"/truyen-nu-phu/\">Nữ Phụ</a><a href=\"/truyen-phieu-luu/\">Phiêu Lưu</a><a href=\"/truyen-phuong-tay/\">Phương Tây</a><a href=\"/truyen-sac-2/\">Sắc</a><a href=\"/truyen-sung/\">Sủng</a><a href=\"/truyen-tham-hiem/\">Thám Hiểm</a><a href=\"/truyen-thuong-nghiep/\">Thương Nghiệp</a><a href=\"/truyen-tieu-thuyet/\">Tiểu thuyết</a><a href=\"/truyen-tieu-thuyet-khac/\">Tiểu Thuyết Khác</a><a href=\"/truyen-18-plus/\">Tiểu Thuyết Lãng Mạn</a><a href=\"/truyen-tieu-thuyet-phuong-tay/\">Tiểu Thuyết Phương Tây</a><a href=\"/truyen-trong-sinh/\">Trọng Sinh</a><a href=\"/truyen-trung-sinh/\">Trùng Sinh</a><a href=\"/truyen-truyen-ma/\">Truyện Ma</a><a href=\"/truyen-truyen-ngan/\">Truyện Ngắn</a><a href=\"/truyen-truyen-tay-phuong/\">Truyện Tây Phương</a><a href=\"/truyen-truyen-teen/\">Truyện Teen</a><a href=\"/truyen-truyen-tinh-cam/\">Truyện Tình Cảm</a><a href=\"/truyen-van-hoc-viet-nam/\">Văn Học Việt Nam</a><a href=\"/truyen-viet-nam/\">Việt Nam</a><a href=\"/truyen-vo-hiep/\">Võ Hiệp</a><a href=\"/truyen-vo-thuat/\">Võ Thuật</a>")

local genre = {}
if doc ~= nil then
    local el = doc:select("a")
    for i = 0, el:size() - 1 do
        local e = el:get(i)
        local link = {}
        link["title"] = e:text()
        link["input"] = "https://truyenyy.vip" .. e:attr("href") .. "danh-sach/"
        link["script"] = "gen.lua"
        table.insert(genre, link)
    end
    return response:success(genre)
end

return nil