package com.kbstar.dto;

import lombok.*;

import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Cart { // 6개의 칼럼
        private int user_id; // PK, FK : 상품을 담은 장바구니의 주인(고객 아이디)
        private String product_id; // PK, FK : 상품의 번호
        private int cart_quantity; // 상품 수량
        private Date cart_date; // 상품을 장바구니에 담은 등록일자
        private String cart_status; // 상태 코드 ? 정리필요

        // 참고. 추후에 나의 장바구니 조회할 때 보여줄 Product는 join을 통해
        // product_name / product_imgname / product_price 를 가져와서 보여줄 예정~
}
