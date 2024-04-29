import 'package:flutter/material.dart';

class OrderHistoryListButton extends StatelessWidget {
  const OrderHistoryListButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepOrangeAccent, // 버튼의 배경색
        shape: RoundedRectangleBorder( // 버튼의 모양을 변경하기 위해 사용
          borderRadius: BorderRadius.circular(10), // 원하는 모양으로 변경 가능
        ),
        fixedSize: Size(MediaQuery.of(context).size.width * 1, 55), // 버튼의 너비와 높이 설정
      ),
      child: Text(
        "주문내역 보기",
        style: TextStyle(
            color: Colors.white, // 버튼 텍스트 색상
            fontSize: 23, // 버튼 텍스트 크기
            fontWeight: FontWeight.bold
        ),
      ),
      onPressed: () {
        print("주문내역 보기 버튼 눌려짐");
      },
    );
  }
}