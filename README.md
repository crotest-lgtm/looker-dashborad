# 🚀 CRO Analytics Platform

Multi-source CRO ve Analytics platformu. Google Ads, SEO, Google Analytics verilerinizi yükleyip AI-powered cross-channel insights alın.

## ✨ Özellikler

- 📊 Multi-source data analizi (Google Ads, SEO, Analytics, vb.)
- 🤖 AI-powered cross-channel insights
- 📈 Otomatik CRO önerileri
- 🎯 Quick wins ve long-term stratejiler
- 💰 Budget optimization önerileri
- 📋 Excel şablonları
- ✏️ Manuel veri girişi

## 🚀 Hızlı Başlangıç

### 1. Repository'yi Klonlayın

```bash
git clone <repository-url>
cd cro-analytics-platform
```

### 2. Dependencies'i Yükleyin

```bash
npm install
# veya
yarn install
```

### 3. Environment Variables Ayarlayın

`.env.example` dosyasını `.env.local` olarak kopyalayın:

```bash
cp .env.example .env.local
```

`.env.local` dosyasını düzenleyin ve Anthropic API key'inizi ekleyin:

```
ANTHROPIC_API_KEY=sk-ant-api03-xxxxxxxxxxxxxxxx
```

**API Key Nereden Alınır?**
- https://console.anthropic.com adresine gidin
- Hesap oluşturun (ücretsiz)
- API Keys bölümünden yeni key oluşturun

### 4. Development Server'ı Başlatın

```bash
npm run dev
# veya
yarn dev
```

Tarayıcınızda [http://localhost:3000](http://localhost:3000) adresini açın.

## 📦 Production'a Deploy Etme

### Vercel (Önerilen - En Kolay)

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new)

1. Vercel hesabı oluşturun (ücretsiz): https://vercel.com/signup
2. Bu repository'yi GitHub'a push edin
3. Vercel'de "Import Project" seçeneğini kullanın
4. Environment Variables ekleyin:
   - Key: `ANTHROPIC_API_KEY`
   - Value: `sk-ant-api03-xxx` (sizin key'iniz)
5. Deploy butonuna basın!

**Deployment süresi:** 2-3 dakika

### Netlify

```bash
npm install -g netlify-cli
netlify login
netlify deploy --prod
```

Environment variables'ı Netlify dashboard'dan ekleyin.

### Docker

```bash
docker build -t cro-analytics .
docker run -p 3000:3000 -e ANTHROPIC_API_KEY=sk-ant-xxx cro-analytics
```

## 📝 Kullanım

### 1. Veri Kaynakları Ekleme

Platform 3 farklı yöntemle veri kabul eder:

#### A. Dosya Yükleme
- Google Ads, SEO, Analytics raporlarınızı PDF, Excel veya CSV formatında yükleyin
- Platform otomatik olarak parse edecektir

#### B. Excel Şablonları
1. Platform'dan ilgili şablonu indirin
2. Verilerinizi şablona doldurun
3. Doldurduğunuz dosyayı yükleyin

#### C. Manuel Veri Girişi
- Her kaynak kartında "Manuel Giriş" butonuna tıklayın
- Form üzerinden verilerinizi girin
- Direkt analiz edin

### 2. Analiz Etme

- Tüm kaynaklarınızı ekledikten sonra "Tüm Raporları Analiz Et" butonuna basın
- Platform cross-channel analiz yapacak ve insights sunacak

### 3. Sonuçları İnceleme

Analiz sonucunda şunları göreceksiniz:
- Executive Summary
- Overall Health Score
- Kanal bazlı performans
- Cross-channel insights
- Critical issues
- Quick wins
- Long-term strategy
- Budget önerileri

## 🔧 Konfigürasyon

### API Rate Limiting

`pages/api/analyze.js` dosyasında rate limiting ekleyebilirsiniz:

```javascript
// Örnek rate limiting middleware
import rateLimit from 'express-rate-limit';

const limiter = rateLimit({
  windowMs: 15 * 60 * 1000, // 15 dakika
  max: 100 // maksimum 100 request
});
```

### Custom Prompts

Analysis prompt'larını `pages/index.js` dosyasında özelleştirebilirsiniz.

## 🔒 Güvenlik

- ✅ API key'ler backend'de saklanır
- ✅ Environment variables ile yönetilir
- ✅ Frontend'de hiçbir hassas bilgi expose edilmez
- ✅ HTTPS üzerinden güvenli iletişim

## 📊 Sistem Gereksinimleri

- Node.js 18.x veya üzeri
- npm veya yarn
- Anthropic API Key

## 🆘 Sorun Giderme

### "ANTHROPIC_API_KEY is not configured" hatası
- `.env.local` dosyasını oluşturduğunuzdan emin olun
- API key'in doğru girildiğini kontrol edin
- Development server'ı yeniden başlatın

### Dosya yükleme hataları
- Dosya boyutunun 10MB'den küçük olduğundan emin olun
- Desteklenen formatları kullanın (PDF, XLSX, CSV, TXT)

### Build hataları
```bash
rm -rf .next node_modules
npm install
npm run build
```

## 📈 Roadmap

- [ ] API entegrasyonları (Google Ads API, GA4 API)
- [ ] Otomatik scheduled raporlar
- [ ] Email notifications
- [ ] Data visualization charts
- [ ] Historical trend analysis
- [ ] Team collaboration features
- [ ] Multi-language support

## 🤝 Katkıda Bulunma

Pull request'ler kabul edilir. Büyük değişiklikler için önce issue açarak ne değiştirmek istediğinizi tartışın.

## 📄 Lisans

MIT

## 💬 Destek

Sorularınız için:
- GitHub Issues açın
- Email: support@croanalytics.com

## 🙏 Teşekkürler

- [Anthropic Claude](https://www.anthropic.com) - AI Analysis
- [Next.js](https://nextjs.org) - React Framework
- [Tailwind CSS](https://tailwindcss.com) - Styling
- [Lucide Icons](https://lucide.dev) - Icons

---

Made with ❤️ for CRO professionals

---

## 🚀 Live Platform
Deployment in progress...
