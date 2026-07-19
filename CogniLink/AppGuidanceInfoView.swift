#if os(iOS)
import SwiftUI

/// Explains the app's trajectory-aware guidance (Recovery/Maintenance mode,
/// Expect Day-to-Day Fluctuation) and its current review status. Reachable
/// from both ProfileView and the Caregiver Dashboard — both link to this
/// exact view; there is no forked copy.
struct AppGuidanceInfoView: View {
    @ObservedObject private var store = UserProfileStore.shared
    @ObservedObject private var languageManager = LanguageManager.shared

    /// Single source of truth for the feature-maturity notice, shared
    /// between this screen and CaregiverDashboardView's persistent Therapy
    /// Settings notice so the wording never drifts between the two sites.
    static func featureMaturityNoticeText(patientName: String) -> String {
        LanguageManager.shared.currentLanguage.trajFeatureMaturityNoticeText(patientName: patientName)
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                section(title: languageManager.currentLanguage.trajRecoveryVsMaintenanceHeading) {
                    Text(languageManager.currentLanguage.trajRecoveryVsMaintenanceBody)
                        .font(.body)
                        .foregroundColor(.primary)
                }

                section(title: languageManager.currentLanguage.trajFluctuationToggleLabel) {
                    Text(languageManager.currentLanguage.trajFluctuationBody)
                        .font(.body)
                        .foregroundColor(.primary)
                }

                section(title: languageManager.currentLanguage.trajNoteOnWordingHeading) {
                    DisclaimerText(text: Self.featureMaturityNoticeText(patientName: store.profile.displayName), style: .inline)
                }

                section(title: languageManager.currentLanguage.trajClinicalDisclaimerHeading) {
                    DisclaimerText(text: InsightEngine.maintenanceDisclaimer(patientName: store.profile.displayName), style: .inline)
                }
            }
            .padding()
        }
        .background(Color.groupedBackground.ignoresSafeArea())
        .navigationTitle(languageManager.currentLanguage.trajAboutGuidanceLabel)
        .navigationBarTitleDisplayMode(.inline)
    }

    @ViewBuilder
    private func section<Content: View>(title: String, @ViewBuilder content: () -> Content) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.headline)
                .foregroundColor(.secondary)
            content()
        }
    }
}

// MARK: - AppGuidanceInfoView Localization

extension AppLanguage {
    var trajRecoveryVsMaintenanceHeading: String {
        switch self {
        case .english:    return "Recovery vs. Maintenance Mode"
        case .spanish:    return "Modo de recuperación frente a modo de mantenimiento"
        case .hindi:      return "पुनर्प्राप्ति बनाम रखरखाव मोड"
        case .gujarati:   return "પુનઃપ્રાપ્તિ વિરુદ્ધ જાળવણી મોડ"
        case .chinese:    return "恢复模式与维护模式"
        case .farsi:      return "حالت بازیابی در مقابل حالت نگهداری"
        case .korean:     return "복구 모드와 유지 관리 모드"
        case .vietnamese: return "Chế độ khôi phục so với chế độ duy trì"
        case .arabic:     return "وضع التعافي مقابل وضع الصيانة"
        case .portuguese: return "Modo de recuperação x modo de manutenção"
        case .tagalog:    return "Pagbawi vs. Pananatiling Mode"
        case .punjabi:    return "ਸੁਧਾਰ ਬਨਾਮ ਰੱਖ-ਰਖਾਅ ਮੋਡ"
        case .armenian:   return "Վերականգնման և պահպանման ռեժիմներ"
        case .japanese:   return "回復モードとメンテナンスモード"
        case .french:     return "Mode de rétablissement et mode d'entretien"
        case .amharic:    return "የማገገም እና ሁኔታን ጠብቆ ማቆየት ሁነታዎች"
        }
    }

    var trajRecoveryVsMaintenanceBody: String {
        switch self {
        case .english:    return "Recovery mode frames progress around improvement — insights call out when accuracy is trending up or down over time. Maintenance mode frames progress around consistency instead: steady performance is treated as a positive outcome on its own, not just the absence of improvement."
        case .spanish:    return "El modo de recuperación enmarca el progreso en términos de mejora: los análisis señalan cuándo la precisión tiende al alza o a la baja a lo largo del tiempo. Por el contrario, el modo de mantenimiento enmarca el progreso en términos de consistencia: un rendimiento estable se considera un resultado positivo en sí mismo, y no solo la ausencia de mejora."
        case .hindi:      return "रिकवरी मोड प्रगति को सुधार के संदर्भ में देखता है — अंतर्दृष्टियाँ समय के साथ सटीकता के बढ़ने या घटने पर संकेत देती हैं। मेंटेनेंस मोड प्रगति को स्थिरता के संदर्भ में देखता है: निरंतर प्रदर्शन को स्वयं में एक सकारात्मक परिणाम माना जाता है, न कि केवल सुधार की अनुपस्थिति।"
        case .gujarati:   return "પુનઃપ્રાપ્તિ મોડમાં પ્રગતિ સુધારાની આસપાસ ગોઠવવામાં આવે છે — ઇનસાઇટ્સ સમય સાથે ચોકસાઈ વધે કે ઘટે ત્યારે તે દર્શાવે છે. જાળવણી મોડમાં પ્રગતિ સતતતાની આસપાસ ગોઠવવામાં આવે છે: સ્થિર કામગીરી પોતે જ એક સકારાત્મક પરિણામ માનવામાં આવે છે, માત્ર સુધારાની ગેરહાજરી નહીં."
        case .chinese:    return "恢复模式将进展聚焦于改进——当准确率随时间推移呈上升或下降趋势时，系统会发出提示。而维护模式则将进展聚焦于稳定性：稳定的表现本身就被视为一种积极成果，而不仅仅是没有进步。"
        case .farsi:      return "چارچوب‌های حالت بازیابی بر پیشرفت متمرکز هستند — بینش‌ها وقتی که دقت در طول زمان رو به افزایش یا کاهش است، آن را برجسته می‌کنند. چارچوب‌های حالت نگهداری اما بر ثبات متمرکز هستند: عملکرد پایدار به خودی خود یک نتیجه مثبت محسوب می‌شود، نه صرفاً نبود پیشرفت."
        case .korean:     return "복구 모드는 개선에 초점을 맞춰 진행 상황을 파악하며, 시간이 지남에 따라 정확도가 상승하거나 하락하는 추세를 파악할 수 있는 통찰력을 제공합니다. 반면 유지 관리 모드는 일관성에 초점을 맞춰 진행 상황을 파악하는데, 꾸준한 성과는 단순히 개선이 없는 상태가 아니라 그 자체로 긍정적인 결과로 간주됩니다."
        case .vietnamese: return "Chế độ phục hồi đánh giá tiến trình dựa trên sự cải thiện — các phân tích sẽ chỉ ra khi độ chính xác có xu hướng tăng hay giảm theo thời gian. Ngược lại, chế độ duy trì đánh giá tiến trình dựa trên tính ổn định: hiệu suất ổn định được coi là một kết quả tích cực bản thân nó, chứ không chỉ đơn thuần là việc không có sự cải thiện."
        case .arabic:     return "يُركز «وضع التعافي» على التقدم المحرز في مجال التحسين — حيث تُبرز الإحصاءات اتجاه الدقة نحو الارتفاع أو الانخفاض بمرور الوقت. أما «وضع الصيانة» فيُركز على التقدم المحرز في مجال الثبات بدلاً من ذلك: حيث يُنظر إلى الأداء الثابت باعتباره نتيجة إيجابية في حد ذاته، وليس مجرد غياب للتحسن."
        case .portuguese: return "O modo de recuperação avalia o progresso com base na melhoria — os insights indicam quando a precisão apresenta tendência de alta ou de baixa ao longo do tempo. Já o modo de manutenção avalia o progresso com base na consistência: o desempenho estável é considerado um resultado positivo por si só, e não apenas a ausência de melhoria."
        case .tagalog:    return "Ang mga balangkas ng Pagbawi mode ay nakatuon sa pag-unlad — nagbibigay ang mga pananaw ng babala kapag ang katumpakan ay tumataas o bumababa sa paglipas ng panahon. Ang mga balangkas ng Pananatili mode naman ay nakatuon sa pagiging pare-pareho: tinuturing ang matatag na pagganap bilang isang positibong kinalabasan sa sarili nitong karapatan, hindi lamang bilang kawalan ng pag-unlad."
        case .punjabi:    return "ਸੁਧਾਰ ਮੋਡ ਵਿੱਚ ਤਰੱਕੀ ਸੁਧਾਰ ਦੇ ਆਲੇ-ਦੁਆਲੇ ਘੁੰਮਦੀ ਹੈ — ਇਨਸਾਈਟਸ ਸਮੇਂ ਦੇ ਨਾਲ ਸਹੀਤਾ ਵਧ ਰਹੀ ਹੈ ਜਾਂ ਘਟ ਰਹੀ ਹੈ, ਇਸ ਦੀ ਪਛਾਣ ਕਰਵਾਉਂਦੀਆਂ ਹਨ। ਰੱਖ-ਰਖਾਵ ਮੋਡ ਵਿੱਚ ਤਰੱਕੀ ਇਕਸਾਰਤਾ ਦੇ ਆਲੇ-ਦੁਆਲੇ ਘੁੰਮਦੀ ਹੈ: ਸਥਿਰ ਪ੍ਰਦਰਸ਼ਨ ਆਪਣੇ ਆਪ ਵਿੱਚ ਇੱਕ ਸਕਾਰਾਤਮਕ ਨਤੀਜਾ ਮੰਨਿਆ ਜਾਂਦਾ ਹੈ, ਨਾ ਕਿ ਸਿਰਫ ਸੁਧਾਰ ਦੀ ਗੈਰਹਾਜ਼ਰੀ।"
        case .armenian:   return "Վերականգնման ռեժիմի շրջանակներում առաջընթացը չափվում է բարելավման հիման վրա՝ ինսայթները ընդգծում են, երբ ճշգրտությունը ժամանակի ընթացքում աճում կամ նվազում է։ Պահպանման ռեժիմի շրջանակներում առաջընթացը կենտրոնացած է կայունության վրա՝ կայուն կատարողականությունը ինքնին դրական արդյունք է համարվում, ոչ միայն որպես բարելավման բացակայություն։"
        case .japanese:   return "「回復モード」では、改善の進捗状況に焦点を当てます。時間の経過とともに精度が上昇傾向にあるか下降傾向にあるかを、インサイトが指摘します。一方、「メンテナンスモード」では、一貫性の維持に焦点を当てます。安定したパフォーマンスは、単に「改善が見られない」という状態ではなく、それ自体が肯定的な成果として扱われます。"
        case .french:     return "Le mode « Rétablissement » évalue les progrès en fonction de l'amélioration : des indicateurs signalent si la précision suit une tendance à la hausse ou à la baisse au fil du temps. Le mode « Entretien », quant à lui, évalue les progrès en fonction de la constance : une performance stable est considérée comme un résultat positif en soi, et non simplement comme l'absence d'amélioration."
        case .amharic:    return "የማገገም ሁነታ እድገትን ከመሻሻል ጋር ያያይዘዋል — ይህም ትክክለኛነት በጊዜ ሂደት ሲጨምር ወይም ሲቀንስ ግንዛቤዎች ያሳያሉ። በአንጻሩ ሁኔታን ጠብቆ ማቆየት ሁነታ እድገትን ከጥንካሬ ጋር ያያይዘዋል፡ አፈጻጸም ሳይቀያየር በቋሚነት መቀጠሉ መሻሻል አለመኖሩን ብቻ ሳይሆን በራሱ እንደ ጥሩ ውጤት ይቆጠራል።"
        }
    }

    var trajFluctuationBody: String {
        switch self {
        case .english:    return "When this is on, a change in performance has to show up consistently across two separate practice windows before it's flagged. A single unusual day won't trigger an insight by itself."
        case .spanish:    return "Cuando esta opción está activada, debe observarse un cambio en el rendimiento de forma constante durante dos periodos de entrenamiento distintos antes de que se señale. Un solo día atípico no activará por sí solo una alerta."
        case .hindi:      return "जब यह चालू होता है, तो प्रदर्शन में कोई भी बदलाव दो अलग-अलग अभ्यास खिड़कियों में लगातार दिखना चाहिए, तभी इसे चिह्नित किया जाता है। एक अकेला असामान्य दिन अपने आप कोई अंतर्दृष्टि नहीं उत्पन्न करेगा।"
        case .gujarati:   return "જ્યારે આ ચાલુ હોય, ત્યારે કામગીરીમાં ફેરફાર બે અલગ-અલગ પ્રેક્ટિસ વિંડોઝમાં સતત દેખાવો પડે છે, ત્યારબાદ જ તેને ફ્લેગ કરવામાં આવે છે. એક જ અસામાન્ય દિવસ પોતે જ ઇનસાઇટ ટ્રિગર નહીં કરે."
        case .chinese:    return "当此功能启用时，只有当两个独立的训练时段内表现的变化持续出现，才会被标记。单日出现异常情况本身并不会触发分析提示。"
        case .farsi:      return "وقتی این فعال باشد، تغییر در عملکرد باید به‌طور مداوم در دو بازه تمرینی جداگانه ظاهر شود تا علامت‌گذاری شود. یک روز غیرعادی به‌تنهایی باعث ایجاد بینش نمی‌شود."
        case .korean:     return "이 기능이 활성화된 상태에서는, 성과 변화가 두 개의 별도 연습 기간에 걸쳐 일관되게 나타나야만 경고가 표시됩니다. 단 하루만 비정상적인 결과가 나타난다고 해서 그 자체로는 인사이트가 생성되지 않습니다."
        case .vietnamese: return "Khi tính năng này được bật, sự thay đổi về hiệu suất phải xuất hiện một cách nhất quán trong hai khoảng thời gian luyện tập riêng biệt thì mới được đánh dấu. Chỉ một ngày có kết quả bất thường sẽ không tự nó kích hoạt cảnh báo."
        case .arabic:     return "عندما تكون هذه الميزة قيد التشغيل، يجب أن يظهر التغير في الأداء بشكل متسق خلال فترتي تدريب منفصلتين قبل أن يتم الإبلاغ عنه. ولا يؤدي يوم واحد غير عادي بحد ذاته إلى ظهور تنبيه."
        case .portuguese: return "Quando essa função estiver ativada, uma variação no desempenho precisa ocorrer de forma consistente em dois períodos de análise distintos antes de ser sinalizada. Um único dia atípico, por si só, não acionará um alerta."
        case .tagalog:    return "Kapag naka-on ito, kailangang magpakita nang pare-pareho ang pagbabago sa pagganap sa dalawang magkahiwalay na yugto ng pagsasanay bago ito maiturok. Ang isang hindi pangkaraniwang araw lamang ay hindi magpapagana ng insight."
        case .punjabi:    return "ਜਦੋਂ ਇਹ ਚਾਲੂ ਹੁੰਦਾ ਹੈ, ਤਾਂ ਪ੍ਰਦਰਸ਼ਨ ਵਿੱਚ ਕੋਈ ਵੀ ਤਬਦੀਲੀ ਦੋ ਵੱਖ-ਵੱਖ ਅਭਿਆਸ ਖਿੜਕੀਆਂ ਵਿੱਚ ਲਗਾਤਾਰ ਦਿਖਾਈ ਦੇਣੀ ਚਾਹੀਦੀ ਹੈ, ਤਾਂ ਹੀ ਇਸਨੂੰ ਨਿਸ਼ਾਨਦੇਹ ਕੀਤਾ ਜਾਂਦਾ ਹੈ। ਇੱਕ ਹੀ ਅਸਧਾਰਣ ਦਿਨ ਆਪਣੇ ਆਪ ਕੋਈ ਇਨਸਾਈਟ ਟ੍ਰਿਗਰ ਨਹੀਂ ਕਰੇਗਾ।"
        case .armenian:   return "Երբ սա միացված է, կատարողականի փոփոխությունը պետք է երկու առանձին պրակտիկայի պատուհաններում անընդմեջ արտահայտվի, որպեսզի այն նշանավորվի։ Միայն մեկ անսովոր օրը ինքնուրույն չի առաջացնի որևէ ներքին ըմբռնում։"
        case .japanese:   return "この機能が有効になっている場合、パフォーマンスの変化が2つの別々の練習期間にわたって一貫して確認されて初めて、フラグが立てられます。1日だけ異常な結果が出ただけでは、それだけではインサイトは生成されません。"
        case .french:     return "Lorsque cette fonctionnalité est activée, une variation des performances doit se manifester de manière constante au cours de deux périodes d'entraînement distinctes avant d'être signalée. Une seule journée atypique ne suffira pas à elle seule à déclencher une alerte."
        case .amharic:    return "ይህ ሲበራ፣ በአፈጻጸም ላይ የሚታይ ለውጥ ምልክት ከመደረጉ በፊት በሁለት የተነጠሉ የልምምድ ጊዜያት ላይ በተከታታይ መታየት አለበት። አንድ ያልተለመደ ቀን ብቻውን አዲስ ግንዛቤ አይሰጥም።"
        }
    }

    var trajNoteOnWordingHeading: String {
        switch self {
        case .english:    return "A Note on Wording"
        case .spanish:    return "Nota sobre la redacción"
        case .hindi:      return "शब्दावली पर एक टिप्पणी"
        case .gujarati:   return "શબ્દરચના અંગે એક નોંધ"
        case .chinese:    return "关于措辞的说明"
        case .farsi:      return "یادداشتی دربارهٔ واژه‌گزینی"
        case .korean:     return "표현에 관한 참고 사항"
        case .vietnamese: return "Một lưu ý về cách diễn đạt"
        case .arabic:     return "ملاحظة بشأن الصياغة"
        case .portuguese: return "Uma observação sobre a redação"
        case .tagalog:    return "Isang Tala sa Pagpili ng Salita"
        case .punjabi:    return "ਸ਼ਬਦਾਵਲੀ ਬਾਰੇ ਇੱਕ ਨੋਟ"
        case .armenian:   return "Բառապաշարի վերաբերյալ նշում"
        case .japanese:   return "表現に関する注記"
        case .french:     return "Remarque sur la formulation"
        case .amharic:    return "ስለ ቃላት አጠቃቀም ማስታወሻ"
        }
    }

    func trajFeatureMaturityNoticeText(patientName: String) -> String {
        switch self {
        case .english:    return "The wording used in Recovery and Maintenance mode is still being reviewed by a licensed clinician. If anything here reads as confusing or concerning, please treat it as informational only and raise it directly with \(patientName)'s care team."
        case .spanish:    return "El texto utilizado en los modos «Recuperación» y «Mantenimiento» sigue siendo revisado por un profesional sanitario colegiado. Si algo de lo aquí expuesto te resulta confuso o te preocupa, por favor, considéralo únicamente a título informativo y coméntalo directamente con el equipo de atención de \(patientName)."
        case .hindi:      return "रिकवरी और मेंटेनेंस मोड में प्रयुक्त शब्दावली अभी भी एक लाइसेंस प्राप्त चिकित्सक द्वारा समीक्षा के अधीन है। यदि यहाँ कुछ भी भ्रमित करने वाला या चिंताजनक लगे, तो कृपया इसे केवल सूचना के रूप में लें और इसे सीधे \(patientName) की केयर टीम के साथ उठाएँ।"
        case .gujarati:   return "રીકવરી અને મેન્ટેનન્સ મોડમાં વપરાયેલ શબ્દરચના હજુ પણ લાઇસેન્સપ્રાપ્ત ક્લિનિશિયન દ્વારા સમીક્ષા હેઠળ છે. જો અહીંની કોઈપણ બાબત ગૂંચવણભરી કે ચિંતાજનક લાગે, તો કૃપા કરીને તેને માત્ર માહિતીરૂપે લો અને તેને સીધા \(patientName)ની કેર ટીમ સાથે ઉઠાવો."
        case .chinese:    return "\"恢复\"和\"维护\"模式中使用的措辞目前仍在由持证临床医生审核中。如果此处任何内容让您感到困惑或担忧，请仅将其视为参考信息，并直接向\(patientName)的护理团队提出。"
        case .farsi:      return "متن به‌کاررفته در حالت بازیابی و نگهداری همچنان توسط یک درمانگر دارای مجوز در حال بازبینی است. اگر هر بخشی از آن گیج‌کننده یا نگران‌کننده به نظر می‌رسد، لطفاً آن را صرفاً به‌عنوان اطلاعات در نظر بگیرید و مستقیماً با تیم مراقبت \(patientName) مطرح کنید."
        case .korean:     return "회복 및 유지 모드에서 사용되는 문구는 현재 면허를 소지한 임상 전문가가 검토 중인 상태입니다. 여기에서 혼란스럽거나 우려스러운 내용이 있다면, 이를 순전히 참고용으로만 받아들이시고 \(patientName)의 치료팀에 직접 문의해 주시기 바랍니다."
        case .vietnamese: return "Các nội dung được sử dụng trong Chế độ Phục hồi và Duy trì hiện vẫn đang được một chuyên gia y tế có giấy phép hành nghề xem xét. Nếu có bất kỳ nội dung nào ở đây khiến bạn cảm thấy khó hiểu hoặc lo ngại, xin vui lòng coi đó chỉ mang tính chất tham khảo và liên hệ trực tiếp với đội ngũ chăm sóc của \(patientName) để trao đổi."
        case .arabic:     return "لا تزال الصياغة المستخدمة في «وضع التعافي والصيانة» قيد المراجعة من قِبل أخصائي طبي مرخص. إذا بدا أي شيء هنا مربكًا أو مثيرًا للقلق، يرجى اعتباره معلومات إرشادية فقط، وإثارة الأمر مباشرةً مع فريق الرعاية في «\(patientName)»."
        case .portuguese: return "O texto utilizado nos modos \"Recuperação\" e \"Manutenção\" ainda está sendo analisado por um profissional de saúde licenciado. Caso algo aqui pareça confuso ou preocupante, considere-o apenas como informação e entre em contato diretamente com a equipe de atendimento do \(patientName)."
        case .tagalog:    return "Ang mga salitang ginamit sa Pagbawi at Pananatili mode ay kasalukuyang sinusuri ng isang lisensyadong klinisyan. Kung may anumang nakalilito o nakababahala rito, mangyaring ituring itong impormasyon lamang at direktang ipaabot ito sa care team ni \(patientName)."
        case .punjabi:    return "ਸੁਧਾਰ ਅਤੇ ਰੱਖ-ਰਖਾਅ ਮੋਡ ਵਿੱਚ ਵਰਤੀ ਗਈ ਸ਼ਬਦਾਵਲੀ ਅਜੇ ਵੀ ਇੱਕ ਲਾਇਸੰਸਸ਼ੁਦਾ ਕਲੀਨੀਸ਼ੀਅਨ ਵੱਲੋਂ ਸਮੀਖਿਆ ਕੀਤੀ ਜਾ ਰਹੀ ਹੈ। ਜੇ ਇੱਥੇ ਕੁਝ ਵੀ ਉਲਝਣਜਨਕ ਜਾਂ ਚਿੰਤਾਜਨਕ ਲੱਗੇ, ਤਾਂ ਕਿਰਪਾ ਕਰਕੇ ਇਸਨੂੰ ਸਿਰਫ ਜਾਣਕਾਰੀ ਵਜੋਂ ਲਵੋ ਅਤੇ ਇਸਨੂੰ ਸਿੱਧਾ \(patientName) ਦੀ ਕੇਅਰ ਟੀਮ ਨਾਲ ਉਠਾਓ।"
        case .armenian:   return "Վերականգնման և պահպանման ռեժիմում օգտագործվող տեքստը դեռևս վերանայվում է լիցենզավորված կլինիկոսի կողմից։ Եթե այստեղ որևէ բան թվում է շփոթեցնող կամ մտահոգիչ, խնդրում ենք այն ընդունել միայն որպես տեղեկատվություն և ուղղակիորեն քննարկել այն \(patientName)-ի խնամքի թիմի հետ։"
        case .japanese:   return "回復モードおよびメンテナンスモードで使用されている文言については、現在も有資格の臨床医による検討が行われています。ここに記載されている内容で、分かりにくい点や懸念される点がある場合は、あくまで参考情報としてお取り扱いいただき、\(patientName)のケアチームに直接ご相談ください。"
        case .french:     return "Le libellé utilisé dans les modes « Rétablissement » et « Entretien » est toujours en cours de révision par un clinicien agréé. Si certains éléments vous semblent confus ou préoccupants, veuillez les considérer comme purement informatifs et en faire part directement à l'équipe de soins d'\(patientName)."
        case .amharic:    return "በማገገም እና ሁኔታን ጠብቆ ማቆየት ሁነታዎች ውስጥ ጥቅም ላይ የዋሉት ቃላት አሁንም በባለሙያ ሐኪም እየተገመገሙ ነው። እዚህ ላይ ግራ የሚያጋባ ወይም የሚያስጨንቅ ነገር ካለ፣ እባክዎ እንደ መረጃ ብቻ ይውሰዱት እና በቀጥታ ለ\(patientName) የእንክብካቤ ቡድን ያሳውቁ።"
        }
    }

    var trajClinicalDisclaimerHeading: String {
        switch self {
        case .english:    return "Clinical Disclaimer"
        case .spanish:    return "Aviso legal clínico"
        case .hindi:      return "नैदानिक अस्वीकरण"
        case .gujarati:   return "ક્લિનિકલ અસ્વીકાર"
        case .chinese:    return "临床免责声明"
        case .farsi:      return "سلب مسئولیت بالینی"
        case .korean:     return "임상 관련 면책 조항"
        case .vietnamese: return "Lưu ý pháp lý về lâm sàng"
        case .arabic:     return "إخلاء المسؤولية السريرية"
        case .portuguese: return "Isenção de responsabilidade clínica"
        case .tagalog:    return "Paunawa sa Klinikal"
        case .punjabi:    return "ਕਲੀਨਿਕਲ ਅਸੰਬੰਧਤਾ"
        case .armenian:   return "Կլինիկական հրաժարագիր"
        case .japanese:   return "臨床に関する免責事項"
        case .french:     return "Avertissement clinique"
        case .amharic:    return "የሕክምና ማስተባበያ ማስታወሻ"
        }
    }
}
#endif
