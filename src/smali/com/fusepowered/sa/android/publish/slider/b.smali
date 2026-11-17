.class public Lcom/fusepowered/sa/android/publish/slider/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/slider/b$a;
    }
.end annotation


# static fields
.field private static i:Z


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/webkit/WebView;

.field private c:Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout;

.field private d:Landroid/os/Handler;

.field private e:Lcom/fusepowered/sa/android/publish/a/l;

.field private f:I

.field private g:Landroid/os/Handler;

.field private h:Lcom/fusepowered/sa/android/publish/adinformation/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/fusepowered/sa/android/publish/slider/b;->i:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/fusepowered/sa/android/publish/slider/b;-><init>(Landroid/app/Activity;Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b;->d:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/slider/b;->f:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b;->g:Landroid/os/Handler;

    invoke-static {}, Lcom/fusepowered/sa/android/publish/adinformation/b;->a()Lcom/fusepowered/sa/android/publish/adinformation/b;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b;->h:Lcom/fusepowered/sa/android/publish/adinformation/b;

    const-string v0, "Slider"

    const/4 v1, 0x3

    const-string v2, "new Slider Created"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/slider/b;->a:Landroid/app/Activity;

    new-instance v0, Lcom/fusepowered/sa/android/publish/a/l;

    invoke-direct {v0, p1}, Lcom/fusepowered/sa/android/publish/a/l;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b;->e:Lcom/fusepowered/sa/android/publish/a/l;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b;->e:Lcom/fusepowered/sa/android/publish/a/l;

    new-instance v1, Lcom/fusepowered/sa/android/publish/slider/b$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/sa/android/publish/slider/b$1;-><init>(Lcom/fusepowered/sa/android/publish/slider/b;)V

    invoke-virtual {v0, p2, v1}, Lcom/fusepowered/sa/android/publish/a/l;->a(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V

    return-void
.end method

.method static synthetic a(Lcom/fusepowered/sa/android/publish/slider/b;I)I
    .locals 0

    iput p1, p0, Lcom/fusepowered/sa/android/publish/slider/b;->f:I

    return p1
.end method

.method static synthetic a(Lcom/fusepowered/sa/android/publish/slider/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/slider/b;->b()V

    return-void
.end method

.method private b()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    new-instance v0, Lcom/fusepowered/sa/android/publish/slider/b$2;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/slider/b;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/sa/android/publish/slider/b$2;-><init>(Lcom/fusepowered/sa/android/publish/slider/b;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b;->b:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/fusepowered/sa/android/publish/slider/b$3;

    invoke-direct {v1, p0}, Lcom/fusepowered/sa/android/publish/slider/b$3;-><init>(Lcom/fusepowered/sa/android/publish/slider/b;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/fusepowered/sa/android/publish/slider/WebViewJSInterface;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/slider/b;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/fusepowered/sa/android/publish/slider/WebViewJSInterface;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/slider/b;->b:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/slider/b;->b:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/slider/b;->b:Landroid/webkit/WebView;

    const-string v2, "HTMLOUT"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b;->b:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v3, v6}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/fusepowered/sa/android/publish/slider/b$a;

    invoke-direct {v1, p0, v6}, Lcom/fusepowered/sa/android/publish/slider/b$a;-><init>(Lcom/fusepowered/sa/android/publish/slider/b;Lcom/fusepowered/sa/android/publish/slider/b$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b;->e:Lcom/fusepowered/sa/android/publish/a/l;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/a/l;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/model/AdDetails;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/slider/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&ver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/sa/android/publish/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slider URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/slider/b;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/fusepowered/sa/android/publish/slider/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/slider/b;->d()V

    return-void
.end method

.method static synthetic c(Lcom/fusepowered/sa/android/publish/slider/b;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/slider/b;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/f/o;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic d(Lcom/fusepowered/sa/android/publish/slider/b;)Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b;->c:Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout;

    return-object v0
.end method

.method private d()V
    .locals 13

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/slider/b;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/f/o;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b;->a:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v1, Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/slider/b;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/slider/b;->c:Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout;

    new-instance v11, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/slider/b;->a:Landroid/app/Activity;

    invoke-direct {v11, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v12, Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b;->a:Landroid/app/Activity;

    invoke-direct {v12, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/slider/b;->a:Landroid/app/Activity;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/fusepowered/sa/android/publish/f/o;->a(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/ImageButton;->setPadding(IIII)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b;->a:Landroid/app/Activity;

    const-string v1, "tab_side.png"

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, -0x4270a3d7    # -0.07f

    const/4 v7, 0x1

    const v8, 0x3d8f5c29    # 0.07f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const v7, 0x3d8f5c29    # 0.07f

    const/4 v8, 0x1

    const v9, -0x4270a3d7    # -0.07f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const-wide/16 v2, 0x28

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v2, Lcom/fusepowered/sa/android/publish/slider/b$4;

    invoke-direct {v2, p0, v12, v0}, Lcom/fusepowered/sa/android/publish/slider/b$4;-><init>(Lcom/fusepowered/sa/android/publish/slider/b;Landroid/widget/ImageButton;Landroid/view/animation/TranslateAnimation;)V

    new-instance v2, Lcom/fusepowered/sa/android/publish/slider/b$5;

    invoke-direct {v2, p0, v12, v1}, Lcom/fusepowered/sa/android/publish/slider/b$5;-><init>(Lcom/fusepowered/sa/android/publish/slider/b;Landroid/widget/ImageButton;Landroid/view/animation/TranslateAnimation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v2, Lcom/fusepowered/sa/android/publish/slider/b$6;

    invoke-direct {v2, p0, v12, v0}, Lcom/fusepowered/sa/android/publish/slider/b$6;-><init>(Lcom/fusepowered/sa/android/publish/slider/b;Landroid/widget/ImageButton;Landroid/view/animation/TranslateAnimation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    sget-boolean v1, Lcom/fusepowered/sa/android/publish/slider/b;->i:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/fusepowered/sa/android/publish/slider/b;->i:Z

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/slider/b;->g:Landroid/os/Handler;

    new-instance v2, Lcom/fusepowered/sa/android/publish/slider/b$7;

    invoke-direct {v2, p0, v12, v0}, Lcom/fusepowered/sa/android/publish/slider/b$7;-><init>(Lcom/fusepowered/sa/android/publish/slider/b;Landroid/widget/ImageButton;Landroid/view/animation/TranslateAnimation;)V

    const-wide/16 v4, 0x3a98

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    new-instance v0, Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout$c;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout$c;-><init>(II)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/slider/b;->c:Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v1, v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b;->c:Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v0, v11}, Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/slider/b;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout$c;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/slider/b;->a:Landroid/app/Activity;

    const/16 v3, 0x122

    invoke-static {v2, v3}, Lcom/fusepowered/sa/android/publish/f/o;->a(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout$c;-><init>(II)V

    const/4 v2, 0x3

    iput v2, v1, Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout$c;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/slider/b;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/slider/b;->c:Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v1, v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/slider/b;->c:Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout;

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/fusepowered/sa/android/publish/adinformation/a;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/slider/b;->a:Landroid/app/Activity;

    sget-object v3, Lcom/fusepowered/sa/android/publish/adinformation/a$b;->b:Lcom/fusepowered/sa/android/publish/adinformation/a$b;

    sget-object v4, Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;->DEVICE_SIDEBAR:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    iget-object v5, p0, Lcom/fusepowered/sa/android/publish/slider/b;->h:Lcom/fusepowered/sa/android/publish/adinformation/b;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/fusepowered/sa/android/publish/adinformation/a;-><init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/adinformation/a$b;Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;Lcom/fusepowered/sa/android/publish/adinformation/b;)V

    invoke-virtual {v1, v0}, Lcom/fusepowered/sa/android/publish/adinformation/a;->a(Landroid/widget/RelativeLayout;)V

    new-instance v1, Lcom/fusepowered/sa/android/publish/slider/b$8;

    invoke-direct {v1, p0, v0}, Lcom/fusepowered/sa/android/publish/slider/b$8;-><init>(Lcom/fusepowered/sa/android/publish/slider/b;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v12, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b;->c:Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout;

    new-instance v1, Lcom/fusepowered/sa/android/publish/slider/b$9;

    invoke-direct {v1, p0}, Lcom/fusepowered/sa/android/publish/slider/b$9;-><init>(Lcom/fusepowered/sa/android/publish/slider/b;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout;->setDrawerListener(Lcom/fusepowered/sa/android/publish/slider/sliding/DrawerLayout$b;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/fusepowered/sa/android/publish/slider/b;)I
    .locals 2

    iget v0, p0, Lcom/fusepowered/sa/android/publish/slider/b;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fusepowered/sa/android/publish/slider/b;->f:I

    return v0
.end method

.method private e()V
    .locals 5

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/slider/b;->e:Lcom/fusepowered/sa/android/publish/a/l;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/slider/b;->a()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "trackingUrl"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/fusepowered/sa/android/publish/f/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b;->b:Landroid/webkit/WebView;

    const-string v2, "javascript:window.HTMLOUT.processHTML(document.getElementById(\'SearchResults\').innerHTML);"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v2, Lcom/fusepowered/sa/android/publish/slider/a;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b;->a:Landroid/app/Activity;

    invoke-direct {v2, v0}, Lcom/fusepowered/sa/android/publish/slider/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/a/l;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/model/AdDetails;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/AdDetails;->getTrackingUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/fusepowered/sa/android/publish/slider/a;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Slider"

    const/4 v3, 0x6

    const-string v4, "Error reading SearchResults div "

    invoke-static {v2, v3, v4, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/fusepowered/sa/android/publish/slider/b;)I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/slider/b;->f:I

    return v0
.end method

.method static synthetic g(Lcom/fusepowered/sa/android/publish/slider/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/slider/b;->e()V

    return-void
.end method

.method static synthetic h(Lcom/fusepowered/sa/android/publish/slider/b;)Lcom/fusepowered/sa/android/publish/a/l;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b;->e:Lcom/fusepowered/sa/android/publish/a/l;

    return-object v0
.end method

.method static synthetic i(Lcom/fusepowered/sa/android/publish/slider/b;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b;->a:Landroid/app/Activity;

    return-object v0
.end method
