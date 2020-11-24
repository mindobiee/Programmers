-- 없어진 기록 찾기

SELECT ANIMAL_OUTS.ANIMAL_ID, ANIMAL_OUTS.NAME
FROM ANIMAL_OUTS
LEFT JOIN ANIMAL_INS --OUTER JOIN (벤다이어그램 왼쪽)
ON ANIMAL_OUTS.ANIMAL_ID=ANIMAL_INS.ANIMAL_ID -- 기준1(병합조건)
WHERE ANIMAL_INS.ANIMAL_ID is NULL -- 기준2(탐색조건)

-- 있었는데요 없었습니다.
SELECT ANIMAL_INS.ANIMAL_ID, ANIMAL_INS.NAME
FROM ANIMAL_INS
LEFT JOIN ANIMAL_OUTS
ON ANIMAL_OUTS.ANIMAL_ID = ANIMAL_INS.ANIMAL_ID
WHERE ANIMAL_OUTS.DATETIME < ANIMAL_INS.DATETIME -- 입양일보다 출생일이 빨라야 한다!
ORDER BY ANIMAL_INS.DATETIME -- 그다음 정렬하기