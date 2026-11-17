.class public Lcom/chillingo/libterms/ui/TermsUIConfigProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/chillingo/libterms/ui/TermsUIConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chillingo/libterms/ui/TermsUIConfigProvider;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {v0, p0, v1, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    sget-object v1, Lcom/chillingo/libterms/ui/TermsUIConfigProvider;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get resource ID for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " [package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    return v0
.end method

.method public static defaultUIConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/chillingo/libterms/TermsUIConfig;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 14
    new-instance v0, Lcom/chillingo/libterms/TermsUIConfig;

    invoke-direct {v0}, Lcom/chillingo/libterms/TermsUIConfig;-><init>()V

    .line 16
    const-string v1, "def_theme_button_bg_decline"

    invoke-static {v1, p0, p1}, Lcom/chillingo/libterms/ui/TermsUIConfigProvider;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/chillingo/libterms/TermsUIConfig;->declineButtonBackgroundImage:Ljava/lang/Integer;

    .line 17
    const-string v1, "def_theme_button_bg_accept"

    invoke-static {v1, p0, p1}, Lcom/chillingo/libterms/ui/TermsUIConfigProvider;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/chillingo/libterms/TermsUIConfig;->acceptButtonBackgroundImage:Ljava/lang/Integer;

    .line 18
    const-string v1, "def_theme_background"

    invoke-static {v1, p0, p1}, Lcom/chillingo/libterms/ui/TermsUIConfigProvider;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/chillingo/libterms/TermsUIConfig;->activityBackgroundImage:Ljava/lang/Integer;

    .line 19
    const-string v1, "def_theme_seekbar_button"

    invoke-static {v1, p0, p1}, Lcom/chillingo/libterms/ui/TermsUIConfigProvider;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/chillingo/libterms/TermsUIConfig;->ageSeekBarThumbImage:Ljava/lang/Integer;

    .line 20
    const-string v1, "def_theme_seekbar_progress"

    invoke-static {v1, p0, p1}, Lcom/chillingo/libterms/ui/TermsUIConfigProvider;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/chillingo/libterms/TermsUIConfig;->ageSeekBarProgressImage:Ljava/lang/Integer;

    .line 21
    const-string v1, "def_theme_seekbar_box"

    invoke-static {v1, p0, p1}, Lcom/chillingo/libterms/ui/TermsUIConfigProvider;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/chillingo/libterms/TermsUIConfig;->ageSeekBarTextBackgroundImage:Ljava/lang/Integer;

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/chillingo/libterms/TermsUIConfig;->labelColor:Ljava/lang/Integer;

    .line 24
    const/high16 v1, -0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/chillingo/libterms/TermsUIConfig;->ageSeekBarTextColor:Ljava/lang/Integer;

    .line 26
    const v1, -0xd00059

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/chillingo/libterms/TermsUIConfig;->linkTextColor:Ljava/lang/Integer;

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/chillingo/libterms/TermsUIConfig;->acceptButtonTextColor:Ljava/lang/Integer;

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/chillingo/libterms/TermsUIConfig;->declineButtonTextColor:Ljava/lang/Integer;

    .line 30
    return-object v0
.end method
