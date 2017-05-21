.class public Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;
.super Ljava/lang/Object;
.source "HandwritingLocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/handwritingsearch/HandwritingLocalePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LanguageInfo"
.end annotation


# instance fields
.field language:Ljava/lang/String;

.field locale:Ljava/util/Locale;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0
    .param p1, "titleString"    # Ljava/lang/String;
    .param p2, "lang"    # Ljava/lang/String;
    .param p3, "loc"    # Ljava/util/Locale;

    .prologue
    .line 233
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;->title:Ljava/lang/String;

    .line 235
    iput-object p2, p0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;->language:Ljava/lang/String;

    .line 236
    iput-object p3, p0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;->locale:Ljava/util/Locale;

    .line 237
    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLocalePicker$LanguageInfo;->title:Ljava/lang/String;

    return-object v0
.end method
