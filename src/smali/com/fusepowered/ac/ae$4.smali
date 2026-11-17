.class Lcom/fusepowered/ac/ae$4;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ac/ae;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/fusepowered/ac/ae;


# direct methods
.method constructor <init>(Lcom/fusepowered/ac/ae;)V
    .locals 1

    .prologue
    .line 965
    iput-object p1, p0, Lcom/fusepowered/ac/ae$4;->b:Lcom/fusepowered/ac/ae;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 966
    sget-object v0, Lcom/fusepowered/ac/a;->R:Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/ac/ae$4;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1002
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "DEC onLoad: "

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 1003
    iget-object v0, p0, Lcom/fusepowered/ac/ae$4;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1006
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "DEC disabling mouse events"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 1008
    iget-object v0, p0, Lcom/fusepowered/ac/ae$4;->b:Lcom/fusepowered/ac/ae;

    const-string v1, "if (typeof(CN) != \'undefined\' && CN.div) {\n  if (typeof(cn_dispatch_on_touch_begin) != \'undefined\') CN.div.removeEventListener(\'mousedown\',  cn_dispatch_on_touch_begin, true);\n  if (typeof(cn_dispatch_on_touch_end) != \'undefined\')   CN.div.removeEventListener(\'mouseup\',  cn_dispatch_on_touch_end, true);\n  if (typeof(cn_dispatch_on_touch_move) != \'undefined\')  CN.div.removeEventListener(\'mousemove\',  cn_dispatch_on_touch_move, true);\n}\n"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/ae;->a(Ljava/lang/String;)V

    .line 1015
    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/fusepowered/ac/ae$4;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/fusepowered/ac/ae$4;->b:Lcom/fusepowered/ac/ae;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/fusepowered/ac/ae;->C:Z

    .line 1034
    iget-object v0, p0, Lcom/fusepowered/ac/ae$4;->b:Lcom/fusepowered/ac/ae;

    iget-object v0, v0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fusepowered/ac/ADCVideo;->l:Z

    .line 1035
    iget-object v0, p0, Lcom/fusepowered/ac/ae$4;->b:Lcom/fusepowered/ac/ae;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/fusepowered/ac/ae;->w:J

    .line 1036
    iget-object v0, p0, Lcom/fusepowered/ac/ae$4;->b:Lcom/fusepowered/ac/ae;

    iget-object v0, v0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v1, p0, Lcom/fusepowered/ac/ae$4;->b:Lcom/fusepowered/ac/ae;

    iget-wide v2, v1, Lcom/fusepowered/ac/ae;->w:J

    iget-object v1, p0, Lcom/fusepowered/ac/ae$4;->b:Lcom/fusepowered/ac/ae;

    iget-wide v4, v1, Lcom/fusepowered/ac/ae;->v:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/fusepowered/ac/ADCVideo;->p:D

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ac/ae$4;->b:Lcom/fusepowered/ac/ae;

    iget-object v0, v0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->H:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/fusepowered/ac/ae$4;->b:Lcom/fusepowered/ac/ae;

    iget-object v1, v1, Lcom/fusepowered/ac/ae;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1039
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/fusepowered/ac/ae$4;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/fusepowered/ac/ae$4;->b:Lcom/fusepowered/ac/ae;

    iget-object v0, v0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fusepowered/ac/ADCVideo;->k:Z

    .line 1023
    iget-object v0, p0, Lcom/fusepowered/ac/ae$4;->b:Lcom/fusepowered/ac/ae;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/fusepowered/ac/ae;->v:J

    .line 1025
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 971
    sget-object v1, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v2, "DEC request: "

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 974
    const-string v1, "mraid:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 976
    iget-object v1, p0, Lcom/fusepowered/ac/ae$4;->b:Lcom/fusepowered/ac/ae;

    iget-object v1, v1, Lcom/fusepowered/ac/ae;->ar:Lcom/fusepowered/ac/m;

    invoke-virtual {v1, p2}, Lcom/fusepowered/ac/m;->a(Ljava/lang/String;)V

    .line 994
    :cond_0
    :goto_0
    return v0

    .line 981
    :cond_1
    const-string v1, "youtube"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 984
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vnd.youtube:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 985
    const-string v2, "VIDEO_ID"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 986
    iget-object v2, p0, Lcom/fusepowered/ac/ae$4;->b:Lcom/fusepowered/ac/ae;

    iget-object v2, v2, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    invoke-virtual {v2, v1}, Lcom/fusepowered/ac/ADCVideo;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 989
    :cond_2
    const-string v1, "mraid.js"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 994
    const/4 v0, 0x0

    goto :goto_0
.end method
