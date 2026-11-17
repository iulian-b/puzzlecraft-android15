.class Lcom/apptracker/android/module/AppModuleLoader$1;
.super Ljava/lang/Object;
.source "x"

# interfaces
.implements Lcom/apptracker/android/listener/AppListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptracker/android/module/AppModuleLoader;->G(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/apptracker/android/module/AppModuleLoader;

.field private final synthetic k:Z

.field private final synthetic m:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apptracker/android/module/AppModuleLoader;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "arg0"    # Lcom/apptracker/android/module/AppModuleLoader;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Z

    .prologue
    .line 66
    iput-object p1, p0, Lcom/apptracker/android/module/AppModuleLoader$1;->h:Lcom/apptracker/android/module/AppModuleLoader;

    iput-object p2, p0, Lcom/apptracker/android/module/AppModuleLoader$1;->m:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/apptracker/android/module/AppModuleLoader$1;->k:Z

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServerSync(Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "arg0"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    if-eqz p1, :cond_4

    .line 255
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader$1;->h:Lcom/apptracker/android/module/AppModuleLoader;

    invoke-virtual {v0, p1}, Lcom/apptracker/android/module/AppModuleLoader;->getContentFromResponse(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/apptracker/android/module/AppModuleLoader$1;->h:Lcom/apptracker/android/module/AppModuleLoader;

    iget-object v2, p0, Lcom/apptracker/android/module/AppModuleLoader$1;->h:Lcom/apptracker/android/module/AppModuleLoader;

    new-instance v3, Lorg/json/JSONObject;

    .line 132
    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-static {v2, v3}, Lcom/apptracker/android/module/AppModuleLoader;->G(Lcom/apptracker/android/module/AppModuleLoader;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apptracker/android/module/AppModuleLoader;->G(Lcom/apptracker/android/module/AppModuleLoader;Ljava/util/List;)V

    .line 437
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader$1;->h:Lcom/apptracker/android/module/AppModuleLoader;

    invoke-static {v0}, Lcom/apptracker/android/module/AppModuleLoader;->m(Lcom/apptracker/android/module/AppModuleLoader;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader$1;->h:Lcom/apptracker/android/module/AppModuleLoader;

    invoke-static {v0}, Lcom/apptracker/android/module/AppModuleLoader;->G(Lcom/apptracker/android/module/AppModuleLoader;)Lcom/apptracker/android/listener/AppModuleListener;

    move-result-object v0

    iget-object v1, p0, Lcom/apptracker/android/module/AppModuleLoader$1;->m:Ljava/lang/String;

    const-string v2, "data error"

    iget-boolean v3, p0, Lcom/apptracker/android/module/AppModuleLoader$1;->k:Z

    invoke-static {v0, v1, v2, v3}, Lcom/apptracker/android/module/AppModuleLoader;->onFailed(Lcom/apptracker/android/listener/AppModuleListener;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :goto_0
    invoke-static {}, Lcom/apptracker/android/module/AppModuleLoader;->G()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/apptracker/android/module/AppModuleLoader$1;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 542
    invoke-static {}, Lcom/apptracker/android/module/AppModuleLoader;->G()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/apptracker/android/module/AppModuleLoader$1;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_0
    return-void

    .line 487
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader$1;->h:Lcom/apptracker/android/module/AppModuleLoader;

    invoke-static {v0}, Lcom/apptracker/android/module/AppModuleLoader;->m(Lcom/apptracker/android/module/AppModuleLoader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 368
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader$1;->h:Lcom/apptracker/android/module/AppModuleLoader;

    invoke-static {v0}, Lcom/apptracker/android/module/AppModuleLoader;->G(Lcom/apptracker/android/module/AppModuleLoader;)Lcom/apptracker/android/listener/AppModuleListener;

    move-result-object v0

    iget-object v1, p0, Lcom/apptracker/android/module/AppModuleLoader$1;->m:Ljava/lang/String;

    const-string v2, "no fill"

    iget-boolean v3, p0, Lcom/apptracker/android/module/AppModuleLoader$1;->k:Z

    invoke-static {v0, v1, v2, v3}, Lcom/apptracker/android/module/AppModuleLoader;->onFailed(Lcom/apptracker/android/listener/AppModuleListener;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 574
    :catch_0
    move-exception v0

    .line 272
    const-string v1, "APTr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "=~\u000cC\u0013j\tb\u0019B\u0013o\u0018k\u000e.9|\u000ea\u000e.\u0015`\\m\u0013`\nk\u000ez\u0015`\u001b.\u000fz\u000eg\u0012i\\z\u0013.6]3@3l\u0016k\u001fzF"

    invoke-static {v3}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string v1, "APTr"

    invoke-static {v1, v0}, Lcom/apptracker/android/util/AppLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 299
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader$1;->h:Lcom/apptracker/android/module/AppModuleLoader;

    invoke-static {v0}, Lcom/apptracker/android/module/AppModuleLoader;->G(Lcom/apptracker/android/module/AppModuleLoader;)Lcom/apptracker/android/listener/AppModuleListener;

    move-result-object v0

    iget-object v1, p0, Lcom/apptracker/android/module/AppModuleLoader$1;->m:Ljava/lang/String;

    const-string v2, "data error"

    iget-boolean v3, p0, Lcom/apptracker/android/module/AppModuleLoader$1;->k:Z

    invoke-static {v0, v1, v2, v3}, Lcom/apptracker/android/module/AppModuleLoader;->onFailed(Lcom/apptracker/android/listener/AppModuleListener;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 448
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader$1;->h:Lcom/apptracker/android/module/AppModuleLoader;

    iget-boolean v1, p0, Lcom/apptracker/android/module/AppModuleLoader$1;->k:Z

    invoke-static {v0, v1}, Lcom/apptracker/android/module/AppModuleLoader;->G(Lcom/apptracker/android/module/AppModuleLoader;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 333
    :cond_3
    const-string v0, "APTr"

    const-string v1, "O\u000c~1a\u0018{\u0010k0a\u001dj\u0019|\\i\u0013z\\k\u0011~\u0008w\\l\u0013j\u0005.\u001a|\u0013c\\}\u0019|\nk\u000e"

    invoke-static {v1}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader$1;->h:Lcom/apptracker/android/module/AppModuleLoader;

    invoke-static {v0}, Lcom/apptracker/android/module/AppModuleLoader;->G(Lcom/apptracker/android/module/AppModuleLoader;)Lcom/apptracker/android/listener/AppModuleListener;

    move-result-object v0

    iget-object v1, p0, Lcom/apptracker/android/module/AppModuleLoader$1;->m:Ljava/lang/String;

    const-string v2, "no fill"

    iget-boolean v3, p0, Lcom/apptracker/android/module/AppModuleLoader$1;->k:Z

    invoke-static {v0, v1, v2, v3}, Lcom/apptracker/android/module/AppModuleLoader;->onFailed(Lcom/apptracker/android/listener/AppModuleListener;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 336
    :cond_4
    const-string v0, "APTr"

    const-string v1, "O\u000c~1a\u0018{\u0010k0a\u001dj\u0019|\\i\u0013z\\k\u0011~\u0008w\\l\u0013j\u0005.\u001a|\u0013c\\}\u0019|\nk\u000e"

    invoke-static {v1}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v0, "5}\u000f{\u0019.\u000bg\u0008f\\m\u0013`\u0012k\u001fz\u0015a\u00124\\z\u0015c\u0019j\\a\tzR"

    invoke-static {v0}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppLog;->ue(Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader$1;->h:Lcom/apptracker/android/module/AppModuleLoader;

    invoke-static {v0}, Lcom/apptracker/android/module/AppModuleLoader;->G(Lcom/apptracker/android/module/AppModuleLoader;)Lcom/apptracker/android/listener/AppModuleListener;

    move-result-object v0

    iget-object v1, p0, Lcom/apptracker/android/module/AppModuleLoader$1;->m:Ljava/lang/String;

    const-string v2, "network error"

    iget-boolean v3, p0, Lcom/apptracker/android/module/AppModuleLoader$1;->k:Z

    invoke-static {v0, v1, v2, v3}, Lcom/apptracker/android/module/AppModuleLoader;->onFailed(Lcom/apptracker/android/listener/AppModuleListener;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method
