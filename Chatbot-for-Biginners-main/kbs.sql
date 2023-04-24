create database kbs;

CREATE TABLE BENH(
	MABENH INT primary key,
    TENBENH VARCHAR(100),
    CACHXL VARCHAR(1000)
);

CREATE TABLE TRIEUCHUNG(
	MATC INT primary key,
    TENTC VARCHAR(100)
);

CREATE TABLE BENH_TC(
	-- ID INT primary KEY,
    MABENH INT,
    MATC INT,
    TRONGSO INT,
    FOREIGN KEY (MABENH) REFERENCES BENH(MABENH),
    FOREIGN KEY (MATC) REFERENCES TRIEUCHUNG(MATC)
);

INSERT INTO benh
VALUES (1, 'Viêm tai giữa', 'Đưa trẻ đi khám để được chỉ định dùng thuốc tác dụng tại chỗ hoặc thuốc uống, tiêm toàn thân. Không nên để bệnh kéo dài, tiến triển sang giai đoạn ứ mủ hoặc vỡ mủ, không những điều trị khó khăn hơn mà biến chứng cũng rất dễ gặp phải.');

INSERT INTO benh
VALUES (2, 'Viêm họng', 'Có thể sử dụng nước chanh đào ngâm với mật ong cho trẻ uống, hoặc dùng chanh muối cho trẻ. Có thể dùng một loại thuốc kháng sinh cho trẻ uống theo chỉ dẫn của bác sĩ. Nếu trẻ bị nặng thì nên đưa trẻ đi cấp cứu.');

INSERT INTO benh
VALUES (3, 'Bệnh viêm não nhật bản', 'Cần kịp thời đưa trẻ đến các cơ sở y tế điều trị kịp thời tránh việc điều trị thủ công tại nhà vì đây là căn bệnh nguy hiểm nếu chậm trễ dễ dàng gây tử vong.');

INSERT INTO benh
VALUES (4, 'Viêm mũi xoang', 'Đây là bệnh hô hấp thường gặp nhưng không được chủ quan. Đối với bệnh nhẹ sẽ khỏi dưới 4 tuần điều trị. Khi đã trở thành bệnh mãn tính sẽ rất khó để chữa trị có thể tái lại nhiều lần. Với trường hợp này thì người bệnh cần giữ ấm mũi và cổ họng tránh tái đi tái lại.');

INSERT INTO benh
VALUES (5, 'Bệnh sởi', 'Vệ sinh bằng nước ấm sạch sau đó đưa trẻ đến cơ sở y tế để được chẩn đoán điều trị kịp thời. Tránh tiếp xúc nước lạnh và gió.');

INSERT INTO benh
VALUES (6, 'Sốt xuất huyết', 'Cho người bệnh bù nước và điện giải bằng cách uống nước oresol, nước mía hoặc nước ép bưởi để bù vào lượng nước đã mất. Ăn uống đầy đủ để nâng cao thể trạng, ăn các món dễ nuốt như cháo, súp, chia thành nhiều bữa trong ngày. Nếu xuất hiện các dấu hiệu cảnh báo nặng như tiêu chảy thì cần đến bệnh viện điều trị kịp thời, tránh nguy hiểm đến tính mạng.﻿');

INSERT INTO benh
VALUES (7, 'Bệnh thủy đậu', 'Tại chỗ nốt đậu dập vỡ nên chấm dung dịch xanh metylen. Chống ngứa để bệnh nhân đỡ cào gãi bằng các thuốc kháng histamin. Khi bệnh nhân đau và sốt cao, có thể cho dùng acetaminophen. Mỗi ngày 2-3 lần nhỏ mắt, mũi sát khuẩn.');

INSERT INTO benh
VALUES (8, 'Rôm sảy, viêm da ở trẻ em', 'Rôm sảy sẽ tự mất theo thời gian khi thời tiết giảm nhiệt độ. Lưu ý không nên để trẻ gãi nhiều để tránh nhiễm trùng. Nếu ra mồ hôi nhiều, không nên mặc quần áo quá dày, cần để cho da được thông thoáng. Đồng thời nên tắm với nước mát để giảm sưng tấy và rửa sạch làn da. Có thể kết hợp với các loại lá trị rôm sảy như sài đất, lá khế, nước dừa...');

INSERT INTO benh
VALUES (9, 'Bệnh cảm cúm ở trẻ', 'Nhỏ mũi bằng nước muối sinh lý giúp lưu thông mũi, có thể sử dụng một số loại dầu như dầu tràm, dầu khuynh diệp thoa lên ngực, lòng bàn tay, bàn chân của trẻ.Nếu trẻ bị sốt quá cao thì ta nên dùng khăn mềm lau sơ qua cho trẻ, dùng miếng dán hạ sốt và cho bé uống thuốc hạ sốt.Tình trạng trẻ trở nên nghiêm trọng thì nên đưa trẻ đến các cơ sở y tế để chữa trị.');

INSERT INTO benh
VALUES (10, 'Hen suyễn ở trẻ', 'Nên đưa ngay trẻ đến gặp bác sĩ để được tư vấn và cứu chữa. Hãy dùng tay vuốt vuốt nhẹ vào sau gáy cho bé dễ chịu. Dùng một số loại dầu như dầu tràm, dầu khuynh diệp thoa vào vùng cổ. hai bên trái dương cho bé dễ thở.');

INSERT INTO benh
VALUES (11, 'Hội chứng ngưng thở khi ngủ', 'Nên đưa trẻ đến trung tâm y tế gần nhất để được thăm khám và tư vấn.');

INSERT INTO benh
VALUES (12, 'Viêm phổi ở trẻ', 'Nên đưa trẻ đến các trung tâm y tế để chụp phim và cứu chữa kịp thời.');

INSERT INTO benh
VALUES (13, 'Viêm thanh khí phế quản', 'Nên cho trẻ đến các cơ sở y tế để được chẩn đoán kịp thời');

INSERT INTO benh
VALUES (14, 'Viêm dạ dày/ đường ruột', 'Nên đến gặp bác sĩ để được tư vấn tránh mua thuốc và sử dụng sai liều lượng cho trẻ');

INSERT INTO benh
VALUES (15, 'Viêm amidan', 'Dùng một ít nước quất với mật ong cho trẻ uống để giảm triệu chứng đau rát họng ở trẻ. Có thể đến các cơ sở y tế để cắt bỏ amidan tránh tái lại.');

INSERT INTO benh
VALUES (16, 'Bệnh tay – chân – miệng', 'Nên đưa bé đến bệnh viện để bác sĩ điều trị kịp thời nếu không sẽ để lại những biến chứng nguy hiểm như là viêm não, viêm cơ tim, phù phổi và có thể dẫn đến tử vong.');

INSERT INTO benh
VALUES (17, 'Viêm gan B', 'Điều trị với thể viêm gan B cấp tính chủ yếu vẫn là điều trị hỗ trợ, không cần sử dụng thuốc điều trị mà cần chế độ ăn uống nghỉ ngơi khoa học.');

INSERT INTO benh
VALUES (18, 'Đau mắt đỏ', 'Cần phải đưa trẻ đến cơ sở y tế để được các bác sĩ thăm khám chẩn đoán và điều trị. Cho trẻ uống thuốc theo toa bác sĩ. Vệ sinh cả hai mắt.');

INSERT INTO benh
VALUES (19, 'Lao', 'Cần phải đưa trẻ đến cơ sở y tế để được các bác sĩ thăm khám chẩn đoán và điều trị. ');

INSERT INTO benh
VALUES (20, 'Chàm Eczema', 'Cho trẻ chơi ở nơi sạch sẽ, thoáng mát. Mỗi ngày đều phải tắm và bôi dưỡng ẩm 2 - 3 lần. Nếu da bị trầy xước hoặc có mủ thì phải đưa trẻ đến bệnh viện.');

INSERT INTO benh
VALUES (21, 'Quai bị', 'Hạ sốt, chườm ấm. Cho trẻ ăn những món dễ nuốt và dễ tiêu hóa như cháo, súp. Cho trẻ uống nhiều nước để bù lượng nước đã mất trong cơ thể. Súc miệng bằng nước muối sinh lý. Không được cho trẻ nô đùa chạy nhảy nhằm hạn chế biến chứng ở tinh hoàn.');

INSERT INTO benh
VALUES (22, 'Sốt virus', 'Hạ sốt, chườm ấm. Cho trẻ ăn những món dễ nuốt và dễ tiêu hóa như cháo, súp. Cho trẻ uống nhiều nước để bù lượng nước đã mất trong cơ thể. ');

INSERT INTO benh
VALUES (23, 'Giun sán', 'Mua thuốc tẩy giun cho bé. Hướng dẫn trẻ rửa tay trước khi ăn. Vệ sinh môi trường xung quanh như nhà tắm, phòng ăn. Nấu chín thực phẩm một cách kỹ lưỡng.');

INSERT INTO benh
VALUES (24, 'Bệnh bạch hầu', 'Cách ly và đưa đến cơ sở y tế để điều trị.');

INSERT INTO benh
VALUES (25, 'Uốn ván', 'Bệnh nguy hiểm có thời gian ủ bệnh cực kì ngắn và tỷ lệ tử vong cao. Cần đưa đến cơ sở y tế gần nhất sau khi phát hiện.');

INSERT INTO benh
VALUES (26, 'Ho gà', 'Nên đưa đi bác sĩ để kịp thời điều trị, tránh các biến chứng muộn xảy đến.');

INSERT INTO benh
VALUES (27, 'Thiếu máu', 'Bổ sung chế độ ăn giàu sắt như: thịt, trứng, các loại đậu, rau xanh. Với những trẻ khó hấp thụ nên uống thêm viên sắt để giúp cơ thể tạo nhiều máu hơn. Một số trường hợp có thể do nguyên nhân khác cần làm xét nghiệm để có hướng điều trị phù hợp.');

INSERT INTO benh
VALUES (28, 'Chốc lở', 'Che vết chốc lở trên da trẻ lại để không làm vỡ bóng nước lây lan vi khuẩn sang các phần khác của cơ thể và người tiếp xúc với trẻ. Lựa chọn quần áo thoải mái, thoáng mát cho trẻ mặc. Cần vệ sinh vết chốc lở hằng ngày với nước ấm. Giặt riêng đồ của trẻ bị chốc lở và hạn chế cho trẻ ra ngoài cho tới khi khỏi bệnh.');

INSERT INTO benh
VALUES (29, 'Bệnh thứ năm (Ban đỏ nhiễm khuẩn)', 'Không có điều trị đặc hiệu. Bệnh nhân được khuyến khích uống nhiều nước. Acetaminophen (Tylenol) được đưa ra để giúp giảm sốt và đau nhức cơ thể.');

INSERT INTO benh
VALUES (30, 'Cận thị', 'Cần đến cơ sở cắt kính để cắt kính cận và mua các thuốc giảm tăng độ cận');

INSERT INTO trieuchung
VALUES (1, 'Sốt');

INSERT INTO trieuchung
VALUES (2, 'Đau đầu');

INSERT INTO trieuchung
VALUES (3, 'Ho');

INSERT INTO trieuchung
VALUES (4, 'Mệt mỏi');

INSERT INTO trieuchung
VALUES (5, 'Chán ăn');

INSERT INTO trieuchung
VALUES (6, 'Chảy nước mũi');

INSERT INTO trieuchung
VALUES (7, 'Tiêu chảy');

INSERT INTO trieuchung
VALUES (8, 'Buồn nôn');

INSERT INTO trieuchung
VALUES (9, 'Phát ban đỏ');

INSERT INTO trieuchung
VALUES (10, 'Hắt hơi');

INSERT INTO trieuchung
VALUES (11, 'Khó thở');

INSERT INTO trieuchung
VALUES (12, 'Ớn lạnh');

INSERT INTO trieuchung
VALUES (13, 'Giảm cân');

INSERT INTO trieuchung
VALUES (14, 'Khô rát họng');

INSERT INTO trieuchung
VALUES (15, 'Đau họng');

INSERT INTO trieuchung
VALUES (16, 'Đau bụng');

INSERT INTO trieuchung
VALUES (17, 'Đau toàn thân');

INSERT INTO trieuchung
VALUES (18, 'Co giật');

INSERT INTO trieuchung
VALUES (19, 'Ngứa toàn thân');

INSERT INTO trieuchung
VALUES (20, 'Mụn nước');

INSERT INTO trieuchung
VALUES (21, 'Tai có mủ');

INSERT INTO trieuchung
VALUES (22, 'Giảm thính lực');

INSERT INTO trieuchung
VALUES (23, 'Hôn mê');

INSERT INTO trieuchung
VALUES (24, 'Sưng tấy amidan');

INSERT INTO trieuchung
VALUES (25, 'Không ngửi thấy mùi');

INSERT INTO trieuchung
VALUES (26, 'Xuất huyết dưới da');

INSERT INTO trieuchung
VALUES (27, 'Mặt tái nhợt');

INSERT INTO trieuchung
VALUES (28, 'Đau ngực');

INSERT INTO trieuchung
VALUES (29, 'Ăn không tiêu');

INSERT INTO trieuchung
VALUES (30, 'Khó nuốt');

INSERT INTO trieuchung
VALUES (31, 'Mụn nước tay chân miệng');

INSERT INTO trieuchung
VALUES (32, 'Vàng da');

INSERT INTO trieuchung
VALUES (33, 'Đau tai');

INSERT INTO trieuchung
VALUES (34, 'Sưng má');

INSERT INTO trieuchung
VALUES (35, 'Đau khi nuốt');

INSERT INTO trieuchung
VALUES (36, 'Ngứa hậu môn');

INSERT INTO trieuchung
VALUES (37, 'Da nhợt nhạt');

INSERT INTO trieuchung
VALUES (38, 'Màng trắng trong họng');

INSERT INTO trieuchung
VALUES (39, 'Đổ mồ hôi');

INSERT INTO trieuchung
VALUES (40, 'Nhịp tim gấp');

INSERT INTO trieuchung
VALUES (41, 'Huyết áp cao');

INSERT INTO trieuchung
VALUES (42, 'Hạch');

INSERT INTO trieuchung
VALUES (43, 'Lở loét');

INSERT INTO trieuchung
VALUES (44, 'Mắt mờ');

INSERT INTO trieuchung
VALUES (45, 'Nheo mắt');

INSERT INTO trieuchung
VALUES (46, 'Mỏi mắt');

INSERT INTO trieuchung
VALUES (47, 'Thức giữa giấc ngủ');

INSERT INTO trieuchung
VALUES (48, 'Ngừng thở');

INSERT INTO trieuchung
VALUES (49, 'Ác mộng');

INSERT INTO trieuchung
VALUES (50, 'Đái dầm');

INSERT INTO trieuchung
VALUES (51, 'Cộm đau mắt');

INSERT INTO trieuchung
VALUES (52, 'Chảy nước mắt');

INSERT INTO trieuchung
VALUES (53, 'Mắt có ghèn');

INSERT INTO trieuchung
VALUES (54, 'Mắt sung huyết');

INSERT INTO trieuchung
VALUES (55, 'Da khô đỏ ngứa');

INSERT INTO trieuchung
VALUES (56, 'Mụn nước');

INSERT INTO trieuchung
VALUES (57, 'Kích ứng da');

INSERT INTO trieuchung
VALUES (58, 'Chàm cơ thể');

INSERT INTO benh_tc
VALUES (1, 1, 5);

INSERT INTO benh_tc
VALUES (1, 5, 3);

INSERT INTO benh_tc
VALUES (1, 7, 3);

INSERT INTO benh_tc
VALUES (1, 21, 6);

INSERT INTO benh_tc
VALUES (1, 2, 5);

INSERT INTO benh_tc
VALUES (1, 22, 6);

INSERT INTO benh_tc
VALUES (2, 14, 6);

INSERT INTO benh_tc
VALUES (2, 24, 6);

INSERT INTO benh_tc
VALUES (2, 17, 4);

INSERT INTO benh_tc
VALUES (2, 1, 1);

INSERT INTO benh_tc
VALUES (2, 2, 1);

INSERT INTO benh_tc
VALUES (2, 12, 1);

INSERT INTO benh_tc
VALUES (3, 2, 4); 

INSERT INTO benh_tc
VALUES (3, 7, 4);

INSERT INTO benh_tc
VALUES (3, 8, 4);

INSERT INTO benh_tc
VALUES (3, 1, 6);

INSERT INTO benh_tc
VALUES (3, 18, 6);

INSERT INTO benh_tc
VALUES (3, 23, 6);

INSERT INTO benh_tc
VALUES (4, 10, 6);

INSERT INTO benh_tc
VALUES (4, 6, 6);

INSERT INTO benh_tc
VALUES (4, 1, 4);

INSERT INTO benh_tc
VALUES (4, 3, 3);

INSERT INTO benh_tc
VALUES (4, 2, 6);

INSERT INTO benh_tc
VALUES (4, 25, 6);

INSERT INTO benh_tc
VALUES (5, 1, 6);

INSERT INTO benh_tc
VALUES (5, 10, 5);

INSERT INTO benh_tc
VALUES (5, 6, 5);

INSERT INTO benh_tc
VALUES (5, 3, 3);

INSERT INTO benh_tc
VALUES (5, 9, 6);

INSERT INTO benh_tc
VALUES (6, 1, 6);

INSERT INTO benh_tc
VALUES (6, 9, 6);

INSERT INTO benh_tc
VALUES (6, 17, 5);

INSERT INTO benh_tc
VALUES (6, 26, 6);

INSERT INTO benh_tc
VALUES (6, 7, 6);

INSERT INTO benh_tc
VALUES (7, 1, 6);

INSERT INTO benh_tc
VALUES (7, 2, 6);

INSERT INTO benh_tc
VALUES (7, 6, 4);

INSERT INTO benh_tc
VALUES (7, 19, 6);

INSERT INTO benh_tc
VALUES (7, 20, 6);

INSERT INTO benh_tc
VALUES (8, 9, 6);

INSERT INTO benh_tc
VALUES (8, 19, 6);

INSERT INTO benh_tc
VALUES (9, 3, 6);

INSERT INTO benh_tc
VALUES (9, 1, 6);

INSERT INTO benh_tc
VALUES (9, 6, 4);

INSERT INTO benh_tc
VALUES (9, 5, 3);

INSERT INTO benh_tc
VALUES (9, 4, 3);

INSERT INTO benh_tc
VALUES (10, 11, 6);

INSERT INTO benh_tc
VALUES (10, 27, 6);

INSERT INTO benh_tc
VALUES (11, 47, 6);

INSERT INTO benh_tc
VALUES (11, 11, 5);

INSERT INTO benh_tc
VALUES (11, 48, 6);

INSERT INTO benh_tc
VALUES (11, 49, 3);

INSERT INTO benh_tc
VALUES (11, 50, 3);

INSERT INTO benh_tc
VALUES (12, 3, 6);

INSERT INTO benh_tc
VALUES (12, 8, 6);

INSERT INTO benh_tc
VALUES (12, 28, 6);

INSERT INTO benh_tc
VALUES (12, 11, 6);

INSERT INTO benh_tc
VALUES (13, 3, 6);

INSERT INTO benh_tc
VALUES (13, 1, 4);

INSERT INTO benh_tc
VALUES (13, 15, 6);

INSERT INTO benh_tc
VALUES (14, 16, 6);

INSERT INTO benh_tc
VALUES (14, 29, 6);

INSERT INTO benh_tc
VALUES (14, 5, 4);

INSERT INTO benh_tc
VALUES (15, 1, 6);

INSERT INTO benh_tc
VALUES (15, 30, 6);

INSERT INTO benh_tc
VALUES (15, 14, 6);

INSERT INTO benh_tc
VALUES (16, 1, 6);

INSERT INTO benh_tc
VALUES (16, 15, 4);

INSERT INTO benh_tc
VALUES (16, 5, 3);

INSERT INTO benh_tc
VALUES (16, 31, 6);

INSERT INTO benh_tc
VALUES (17, 1, 6);

INSERT INTO benh_tc
VALUES (17, 6, 4);

INSERT INTO benh_tc
VALUES (17, 4, 4);

INSERT INTO benh_tc
VALUES (17, 5, 4);

INSERT INTO benh_tc
VALUES (17, 8, 3);

INSERT INTO benh_tc
VALUES (17, 7, 3);

INSERT INTO benh_tc
VALUES (17, 32, 6);

INSERT INTO benh_tc
VALUES (18, 51, 6);

INSERT INTO benh_tc
VALUES (18, 52, 4);

INSERT INTO benh_tc
VALUES (18, 53, 4);

INSERT INTO benh_tc
VALUES (18, 54, 6);

INSERT INTO benh_tc
VALUES (19, 1, 4);

INSERT INTO benh_tc
VALUES (19, 13, 5);

INSERT INTO benh_tc
VALUES (19, 3, 6);

INSERT INTO benh_tc
VALUES (19, 12, 4);

INSERT INTO benh_tc
VALUES (19, 4, 4);

INSERT INTO benh_tc
VALUES (20, 55, 6);

INSERT INTO benh_tc
VALUES (20, 20, 6);

INSERT INTO benh_tc
VALUES (20, 56, 6);

INSERT INTO benh_tc
VALUES (20, 57, 6);

INSERT INTO benh_tc
VALUES (21, 1, 6);

INSERT INTO benh_tc
VALUES (21, 4, 5);

INSERT INTO benh_tc
VALUES (21, 2, 5);

INSERT INTO benh_tc
VALUES (21, 33, 5);

INSERT INTO benh_tc
VALUES (21, 12, 2);

INSERT INTO benh_tc
VALUES (21, 34, 6);

INSERT INTO benh_tc
VALUES (21, 35, 3);

INSERT INTO benh_tc
VALUES (22, 1, 6);

INSERT INTO benh_tc
VALUES (22, 2, 4);

INSERT INTO benh_tc
VALUES (22, 17, 6);

INSERT INTO benh_tc
VALUES (22, 3, 1);

INSERT INTO benh_tc
VALUES (22, 10, 1);

INSERT INTO benh_tc
VALUES (22, 6, 1);

INSERT INTO benh_tc
VALUES (22, 5, 1);

INSERT INTO benh_tc
VALUES (23, 4, 5);

INSERT INTO benh_tc
VALUES (23, 13, 2);

INSERT INTO benh_tc
VALUES (23, 5, 3);

INSERT INTO benh_tc
VALUES (23, 16, 6);

INSERT INTO benh_tc
VALUES (23, 7, 6);

INSERT INTO benh_tc
VALUES (23, 36, 6);

INSERT INTO benh_tc
VALUES (23, 8, 3);

INSERT INTO benh_tc
VALUES (23, 37, 3);

INSERT INTO benh_tc
VALUES (24, 38, 6);

INSERT INTO benh_tc
VALUES (24, 1, 6);

INSERT INTO benh_tc
VALUES (24, 3, 6);

INSERT INTO benh_tc
VALUES (25, 1, 6);

INSERT INTO benh_tc
VALUES (25, 39, 3);

INSERT INTO benh_tc
VALUES (25, 2, 6);

INSERT INTO benh_tc
VALUES (25, 18, 6);

INSERT INTO benh_tc
VALUES (25, 40, 5);

INSERT INTO benh_tc
VALUES (25, 41, 5);

INSERT INTO benh_tc
VALUES (26, 3, 6);

INSERT INTO benh_tc
VALUES (26, 1, 6);

INSERT INTO benh_tc
VALUES (26, 8, 3);

INSERT INTO benh_tc
VALUES (26, 6, 4);

INSERT INTO benh_tc
VALUES (27, 37, 6);

INSERT INTO benh_tc
VALUES (27, 4, 6);

INSERT INTO benh_tc
VALUES (27, 2, 6);

INSERT INTO benh_tc
VALUES (27, 13, 4);

INSERT INTO benh_tc
VALUES (28, 20, 6);

INSERT INTO benh_tc
VALUES (28, 42, 6);

INSERT INTO benh_tc
VALUES (28, 43, 6);

INSERT INTO benh_tc
VALUES (29, 9, 6);

INSERT INTO benh_tc
VALUES (29, 1, 6);

INSERT INTO benh_tc
VALUES (29, 4, 6);

INSERT INTO benh_tc
VALUES (29, 2, 6);

INSERT INTO benh_tc
VALUES (29, 17, 3);

INSERT INTO benh_tc
VALUES (30, 44, 6);

INSERT INTO benh_tc
VALUES (30, 45, 6);

INSERT INTO benh_tc
VALUES (30, 46, 6);