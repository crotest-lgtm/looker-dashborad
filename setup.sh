#!/bin/bash

echo "🚀 CRO Analytics Platform - Hızlı Kurulum"
echo "=========================================="
echo ""

# Renk kodları
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Node.js kontrolü
if ! command -v node &> /dev/null; then
    echo "❌ Node.js bulunamadı. Lütfen Node.js yükleyin: https://nodejs.org"
    exit 1
fi

echo -e "${GREEN}✓${NC} Node.js bulundu: $(node --version)"

# npm kontrolü
if ! command -v npm &> /dev/null; then
    echo "❌ npm bulunamadı. Lütfen npm yükleyin"
    exit 1
fi

echo -e "${GREEN}✓${NC} npm bulundu: $(npm --version)"
echo ""

# Dependencies yükleme
echo -e "${BLUE}📦 Dependencies yükleniyor...${NC}"
npm install

if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓${NC} Dependencies başarıyla yüklendi"
else
    echo "❌ Dependencies yüklenirken hata oluştu"
    exit 1
fi

echo ""

# .env.local kontrolü
if [ ! -f .env.local ]; then
    echo -e "${YELLOW}⚠${NC}  .env.local dosyası bulunamadı"
    echo "📝 .env.example dosyasından .env.local oluşturuluyor..."
    cp .env.example .env.local
    echo ""
    echo -e "${YELLOW}⚠${NC}  ÖNEMLİ: .env.local dosyasını düzenleyip ANTHROPIC_API_KEY'inizi ekleyin!"
    echo "   API Key: https://console.anthropic.com adresinden alabilirsiniz"
    echo ""
    echo "   Dosya konumu: $(pwd)/.env.local"
    echo ""
    read -p "API Key'i ekledikten sonra devam etmek için Enter'a basın..."
fi

echo ""
echo -e "${GREEN}✓${NC} Kurulum tamamlandı!"
echo ""
echo "Şimdi ne yapmalısınız?"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "1️⃣  Local'de çalıştırmak için:"
echo "   ${BLUE}npm run dev${NC}"
echo "   Tarayıcıda: http://localhost:3000"
echo ""
echo "2️⃣  Vercel'e deploy etmek için:"
echo "   a) GitHub'a push edin"
echo "   b) Vercel'de import edin: https://vercel.com/new"
echo "   c) Environment Variables ekleyin"
echo "   d) Deploy edin!"
echo ""
echo "3️⃣  Build almak için:"
echo "   ${BLUE}npm run build${NC}"
echo "   ${BLUE}npm start${NC}"
echo ""
echo "📚 Detaylı bilgi için README.md dosyasını okuyun"
echo ""
echo -e "${GREEN}🎉 İyi çalışmalar!${NC}"
