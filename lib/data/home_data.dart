import 'package:flutter/material.dart';
import '../models/service_item.dart';
import '../theme/app_colors.dart';

/// Opsi pada bagian "Pesan Sekarang?".
const List<ServiceItem> orderOptions = [
  ServiceItem(
    title: 'Pick Up.',
    description:
        'Tinggal ambil ke Bhinneeka gaperlu antri lagi. Kalau sudah siap kita kabarin ya...',
    icon: Icons.local_cafe,
    color: AppColors.pickup,
  ),
  ServiceItem(
    title: 'Delivery.',
    description:
        'Dijamin tepat waktu. Duduk manis aja ya, pesanan kamu bakal sampe kok! :)',
    icon: Icons.delivery_dining,
    color: AppColors.delivery,
  ),
];

/// Kartu pada bagian "Spesial Untukmu di Bhinneeka.".
const List<ServiceItem> specialServices = [
  ServiceItem(
    title: 'Reservasi.',
    description: 'Reservasi tempat untuk acara mu di Bhinneeka.',
    icon: Icons.calendar_today,
  ),
  ServiceItem(
    title: 'Catering.',
    description: 'Rayakan momen bersama Bhinneeka.',
    icon: Icons.room_service,
  ),
  ServiceItem(
    title: 'Bhinneefit.',
    description:
        'Berlangganan untuk mendapatkan banyak benefit dari Bhinneeka.',
    icon: Icons.fitness_center,
  ),
  ServiceItem(
    title: 'Referral.',
    description: 'Bagikan kode referral, dapatkan hadiah.',
    icon: Icons.card_giftcard,
  ),
];
