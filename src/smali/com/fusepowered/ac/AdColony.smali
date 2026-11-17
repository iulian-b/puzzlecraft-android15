.class public Lcom/fusepowered/ac/AdColony;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/ac/AdColony$a;
    }
.end annotation


# static fields
.field static b:Z


# instance fields
.field a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/ac/AdColony;->a:Z

    .line 404
    return-void
.end method

.method public static activity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 274
    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static addAdAvailabilityListener(Lcom/fusepowered/ac/AdColonyAdAvailabilityListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/fusepowered/ac/AdColonyAdAvailabilityListener;

    .prologue
    .line 338
    sget-object v0, Lcom/fusepowered/ac/a;->ab:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 339
    :cond_0
    sget-object v0, Lcom/fusepowered/ac/a;->ab:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static addV4VCListener(Lcom/fusepowered/ac/AdColonyV4VCListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/fusepowered/ac/AdColonyV4VCListener;

    .prologue
    .line 323
    sget-object v0, Lcom/fusepowered/ac/a;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 324
    :cond_0
    sget-object v0, Lcom/fusepowered/ac/a;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static cancelVideo()V
    .locals 2

    .prologue
    .line 352
    sget-object v0, Lcom/fusepowered/ac/a;->I:Lcom/fusepowered/ac/ADCVideo;

    if-eqz v0, :cond_0

    .line 354
    sget-object v0, Lcom/fusepowered/ac/a;->I:Lcom/fusepowered/ac/ADCVideo;

    invoke-virtual {v0}, Lcom/fusepowered/ac/ADCVideo;->finish()V

    .line 355
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/ac/a;->W:Z

    .line 356
    sget-object v0, Lcom/fusepowered/ac/a;->K:Lcom/fusepowered/ac/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/a$a;->b(Lcom/fusepowered/ac/AdColonyAd;)V

    .line 358
    :cond_0
    return-void
.end method

.method public static varargs configure(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "client_options"    # Ljava/lang/String;
    .param p2, "app_id"    # Ljava/lang/String;
    .param p3, "zone_ids"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 57
    sput-boolean v1, Lcom/fusepowered/ac/AdColony;->b:Z

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_2

    .line 61
    new-instance v0, Lcom/fusepowered/ac/AdColony$a;

    invoke-direct {v0, p0}, Lcom/fusepowered/ac/AdColony$a;-><init>(Landroid/app/Activity;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/fusepowered/ac/AdColony$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    :goto_0
    sget-object v0, Lcom/fusepowered/ac/a;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 70
    new-instance v2, Lcom/fusepowered/ac/AdColony$1;

    invoke-direct {v2}, Lcom/fusepowered/ac/AdColony$1;-><init>()V

    .line 78
    sget-boolean v3, Lcom/fusepowered/ac/a;->y:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/fusepowered/ac/a;->z:Z

    if-eqz v3, :cond_7

    .line 80
    :cond_0
    sget-boolean v3, Lcom/fusepowered/ac/a;->q:Z

    if-eqz v3, :cond_3

    .line 119
    :cond_1
    :goto_1
    return-void

    .line 65
    :cond_2
    new-instance v0, Lcom/fusepowered/ac/AdColony$a;

    invoke-direct {v0, p0}, Lcom/fusepowered/ac/AdColony$a;-><init>(Landroid/app/Activity;)V

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/fusepowered/ac/AdColony$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 82
    :cond_3
    if-nez p2, :cond_4

    .line 84
    const-string v0, "Null App ID - disabling AdColony."

    invoke-static {v0}, Lcom/fusepowered/ac/a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 88
    :cond_4
    if-nez p3, :cond_5

    .line 90
    const-string v0, "Null Zone IDs array - disabling AdColony."

    invoke-static {v0}, Lcom/fusepowered/ac/a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 94
    :cond_5
    array-length v3, p3

    if-nez v3, :cond_6

    .line 96
    const-string v0, "No Zone IDs provided - disabling AdColony."

    invoke-static {v0}, Lcom/fusepowered/ac/a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_6
    invoke-static {p0}, Lcom/fusepowered/ac/a;->b(Landroid/app/Activity;)V

    .line 101
    sget-object v3, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    invoke-virtual {v3, p1, p2, p3}, Lcom/fusepowered/ac/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 103
    sput-boolean v6, Lcom/fusepowered/ac/a;->o:Z

    .line 104
    sput-boolean v6, Lcom/fusepowered/ac/a;->y:Z

    .line 105
    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    :cond_7
    sget-object v0, Lcom/fusepowered/ac/a;->I:Lcom/fusepowered/ac/ADCVideo;

    if-nez v0, :cond_8

    sput-boolean v6, Lcom/fusepowered/ac/a;->v:Z

    .line 112
    :cond_8
    sget-object v0, Lcom/fusepowered/ac/a;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 113
    sget-object v0, Lcom/fusepowered/ac/a;->ab:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fusepowered/ac/a;->ad:Ljava/util/HashMap;

    move v0, v1

    .line 115
    :goto_2
    array-length v2, p3

    if-ge v0, v2, :cond_1

    .line 117
    sget-object v2, Lcom/fusepowered/ac/a;->ad:Ljava/util/HashMap;

    aget-object v3, p3, v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static disable()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/ac/a;->q:Z

    .line 49
    return-void
.end method

.method public static disableDECOverride()V
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/ac/a;->e:Ljava/lang/String;

    .line 396
    return-void
.end method

.method public static getCustomID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    iget-object v0, v0, Lcom/fusepowered/ac/c;->x:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    iget-object v0, v0, Lcom/fusepowered/ac/c;->y:Ljava/lang/String;

    return-object v0
.end method

.method public static getRemainingV4VCForZone(Ljava/lang/String;)I
    .locals 2
    .param p0, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 306
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->h:Lcom/fusepowered/ac/t;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v0, v0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v0, v0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v0, v0, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    if-nez v0, :cond_1

    .line 310
    :cond_0
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "getRemainingV4VCForZone called before AdColony has finished configuring."

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->c(Ljava/lang/String;)I

    move-result v0

    .line 314
    :goto_0
    return v0

    .line 312
    :cond_1
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v0, v0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v0, v0, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    invoke-virtual {v0, p0}, Lcom/fusepowered/ac/n$ab;->a(Ljava/lang/String;)Lcom/fusepowered/ac/n$y;

    move-result-object v0

    .line 313
    iget-object v1, v0, Lcom/fusepowered/ac/n$y;->j:Lcom/fusepowered/ac/n$aa;

    iget-boolean v1, v1, Lcom/fusepowered/ac/n$aa;->a:Z

    if-nez v1, :cond_2

    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "getRemainingV4VCForZone called with non-V4VC zone."

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->c(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 314
    :cond_2
    iget-object v0, v0, Lcom/fusepowered/ac/n$y;->j:Lcom/fusepowered/ac/n$aa;

    iget-object v0, v0, Lcom/fusepowered/ac/n$aa;->b:Lcom/fusepowered/ac/n$w;

    iget v0, v0, Lcom/fusepowered/ac/n$w;->a:I

    sget-object v1, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v1, v1, Lcom/fusepowered/ac/d;->h:Lcom/fusepowered/ac/t;

    invoke-virtual {v1, p0}, Lcom/fusepowered/ac/t;->b(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public static get_images(Ljava/lang/String;)V
    .locals 1
    .param p0, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 390
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    invoke-virtual {v0, p0}, Lcom/fusepowered/ac/c;->b(Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public static isTablet()Z
    .locals 1

    .prologue
    .line 172
    invoke-static {}, Lcom/fusepowered/ac/g;->i()Z

    move-result v0

    return v0
.end method

.method public static isZoneNative(Ljava/lang/String;)Z
    .locals 3
    .param p0, "zone_id"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 288
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    if-nez v0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return v1

    .line 289
    :cond_1
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    if-eqz v0, :cond_0

    .line 290
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v0, v0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    if-eqz v0, :cond_0

    .line 291
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v0, v0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v0, v0, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    if-eqz v0, :cond_0

    .line 292
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v0, v0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v0, v0, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    invoke-virtual {v0, p0}, Lcom/fusepowered/ac/n$ab;->a(Ljava/lang/String;)Lcom/fusepowered/ac/n$y;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v0, v0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v0, v0, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    invoke-virtual {v0, p0}, Lcom/fusepowered/ac/n$ab;->a(Ljava/lang/String;)Lcom/fusepowered/ac/n$y;

    move-result-object v0

    iget-object v0, v0, Lcom/fusepowered/ac/n$y;->i:Lcom/fusepowered/ac/n$d;

    if-eqz v0, :cond_0

    .line 294
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v0, v0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v0, v0, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    invoke-virtual {v0, p0}, Lcom/fusepowered/ac/n$ab;->a(Ljava/lang/String;)Lcom/fusepowered/ac/n$y;

    move-result-object v0

    iget-object v0, v0, Lcom/fusepowered/ac/n$y;->i:Lcom/fusepowered/ac/n$d;

    iget-object v0, v0, Lcom/fusepowered/ac/n$d;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v0, v1

    .line 296
    :goto_1
    sget-object v2, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v2, v2, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v2, v2, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v2, v2, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    invoke-virtual {v2, p0}, Lcom/fusepowered/ac/n$ab;->a(Ljava/lang/String;)Lcom/fusepowered/ac/n$y;

    move-result-object v2

    iget-object v2, v2, Lcom/fusepowered/ac/n$y;->i:Lcom/fusepowered/ac/n$d;

    iget-object v2, v2, Lcom/fusepowered/ac/n$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 298
    sget-object v2, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v2, v2, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v2, v2, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v2, v2, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    invoke-virtual {v2, p0}, Lcom/fusepowered/ac/n$ab;->a(Ljava/lang/String;)Lcom/fusepowered/ac/n$y;

    move-result-object v2

    iget-object v2, v2, Lcom/fusepowered/ac/n$y;->i:Lcom/fusepowered/ac/n$d;

    invoke-virtual {v2, v0}, Lcom/fusepowered/ac/n$d;->a(I)Lcom/fusepowered/ac/n$a;

    move-result-object v2

    iget-object v2, v2, Lcom/fusepowered/ac/n$a;->w:Lcom/fusepowered/ac/n$n;

    iget-boolean v2, v2, Lcom/fusepowered/ac/n$n;->a:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 296
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isZoneV4VC(Ljava/lang/String;)Z
    .locals 2
    .param p0, "zone_id"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 279
    sget-object v1, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    if-nez v1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v0

    .line 280
    :cond_1
    sget-object v1, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v1, v1, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    if-eqz v1, :cond_0

    .line 281
    sget-object v1, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v1, v1, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v1, v1, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    if-eqz v1, :cond_0

    .line 282
    sget-object v1, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v1, v1, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v1, v1, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v1, v1, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    if-eqz v1, :cond_0

    .line 283
    sget-object v1, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v1, v1, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    invoke-virtual {v1, p0, v0}, Lcom/fusepowered/ac/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static onBackPressed()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 258
    sget-object v0, Lcom/fusepowered/ac/a;->G:Lcom/fusepowered/ac/h;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fusepowered/ac/a;->G:Lcom/fusepowered/ac/h;

    instance-of v0, v0, Lcom/fusepowered/ac/ac;

    if-eqz v0, :cond_1

    .line 260
    sget-object v0, Lcom/fusepowered/ac/a;->G:Lcom/fusepowered/ac/h;

    invoke-virtual {v0}, Lcom/fusepowered/ac/h;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v2, Lcom/fusepowered/ac/a;->G:Lcom/fusepowered/ac/h;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 261
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/ac/a;->v:Z

    .line 262
    sget-object v0, Lcom/fusepowered/ac/a;->G:Lcom/fusepowered/ac/h;

    iget-object v0, v0, Lcom/fusepowered/ac/h;->F:Lcom/fusepowered/ac/AdColonyV4VCAd;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/AdColonyV4VCAd;->c(Z)V

    .line 263
    :goto_0
    sget-object v0, Lcom/fusepowered/ac/a;->Z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    sget-object v0, Lcom/fusepowered/ac/a;->Z:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 264
    :cond_0
    sget-object v0, Lcom/fusepowered/ac/a;->Z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 265
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/ac/a;->G:Lcom/fusepowered/ac/h;

    .line 267
    :cond_1
    return-void
.end method

.method public static pause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 238
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "[ADC] AdColony pause called."

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 239
    sput-boolean v4, Lcom/fusepowered/ac/a;->t:Z

    move v1, v2

    .line 240
    :goto_0
    sget-object v0, Lcom/fusepowered/ac/a;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 242
    sget-object v0, Lcom/fusepowered/ac/a;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 244
    sget-object v0, Lcom/fusepowered/ac/a;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/ac/AdColonyNativeAdView;

    .line 245
    iput-boolean v4, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->x:Z

    .line 246
    iget-object v3, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    sget-boolean v3, Lcom/fusepowered/ac/a;->v:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->L:Lcom/fusepowered/ac/AdColonyNativeAdView$b;

    invoke-virtual {v3, v2}, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->setVisibility(I)V

    .line 250
    :cond_0
    invoke-virtual {v0}, Lcom/fusepowered/ac/AdColonyNativeAdView;->c()V

    .line 240
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 254
    :cond_2
    return-void
.end method

.method public static removeAdAvailabilityListener(Lcom/fusepowered/ac/AdColonyAdAvailabilityListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/fusepowered/ac/AdColonyAdAvailabilityListener;

    .prologue
    .line 344
    sget-object v0, Lcom/fusepowered/ac/a;->ab:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 345
    return-void
.end method

.method public static removeV4VCListener(Lcom/fusepowered/ac/AdColonyV4VCListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/fusepowered/ac/AdColonyV4VCListener;

    .prologue
    .line 329
    sget-object v0, Lcom/fusepowered/ac/a;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 330
    return-void
.end method

.method public static resume(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 180
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "[ADC] AdColony resume called."

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 181
    sput-boolean v2, Lcom/fusepowered/ac/a;->t:Z

    .line 182
    invoke-static {p0}, Lcom/fusepowered/ac/a;->a(Landroid/app/Activity;)V

    .line 183
    sput-boolean v2, Lcom/fusepowered/ac/a;->s:Z

    .line 185
    if-nez p0, :cond_0

    .line 187
    sget-object v0, Lcom/fusepowered/ac/l;->d:Lcom/fusepowered/ac/l;

    const-string v1, "Activity reference is null. Disabling AdColony."

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 188
    invoke-static {}, Lcom/fusepowered/ac/AdColony;->disable()V

    .line 229
    :goto_0
    return-void

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fusepowered/ac/AdColony$2;

    invoke-direct {v1, p0}, Lcom/fusepowered/ac/AdColony$2;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 227
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 228
    sput-boolean v2, Lcom/fusepowered/ac/a;->D:Z

    goto :goto_0
.end method

.method public static setCustomID(Ljava/lang/String;)V
    .locals 3
    .param p0, "new_custom_id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 126
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    iget-object v0, v0, Lcom/fusepowered/ac/c;->x:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    iput-object p0, v0, Lcom/fusepowered/ac/c;->x:Ljava/lang/String;

    .line 129
    sput-boolean v1, Lcom/fusepowered/ac/a;->y:Z

    .line 130
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iput-boolean v2, v0, Lcom/fusepowered/ac/b;->d:Z

    .line 131
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iput-boolean v1, v0, Lcom/fusepowered/ac/b;->b:Z

    .line 132
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iput-boolean v2, v0, Lcom/fusepowered/ac/b;->c:Z

    .line 134
    :cond_0
    return-void
.end method

.method public static setDeviceID(Ljava/lang/String;)V
    .locals 3
    .param p0, "new_device_id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 149
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    iget-object v0, v0, Lcom/fusepowered/ac/c;->y:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    iput-object p0, v0, Lcom/fusepowered/ac/c;->y:Ljava/lang/String;

    .line 152
    sput-boolean v1, Lcom/fusepowered/ac/a;->y:Z

    .line 153
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iput-boolean v2, v0, Lcom/fusepowered/ac/b;->d:Z

    .line 154
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iput-boolean v1, v0, Lcom/fusepowered/ac/b;->b:Z

    .line 155
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iput-boolean v2, v0, Lcom/fusepowered/ac/b;->c:Z

    .line 157
    :cond_0
    return-void
.end method

.method public static statusForZone(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 365
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v0, v0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v0, v0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v0, v0, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    if-nez v0, :cond_1

    .line 368
    :cond_0
    const-string v0, "unknown"

    .line 381
    :goto_0
    return-object v0

    .line 370
    :cond_1
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v0, v0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v0, v0, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    invoke-virtual {v0, p0}, Lcom/fusepowered/ac/n$ab;->a(Ljava/lang/String;)Lcom/fusepowered/ac/n$y;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_4

    .line 374
    iget-boolean v1, v0, Lcom/fusepowered/ac/n$y;->e:Z

    if-nez v1, :cond_2

    const-string v0, "off"

    goto :goto_0

    .line 375
    :cond_2
    iget-boolean v0, v0, Lcom/fusepowered/ac/n$y;->f:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/fusepowered/ac/b;->c(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "active"

    goto :goto_0

    .line 376
    :cond_3
    const-string v0, "loading"

    goto :goto_0

    .line 379
    :cond_4
    sget-boolean v0, Lcom/fusepowered/ac/a;->p:Z

    if-nez v0, :cond_5

    const-string v0, "unknown"

    goto :goto_0

    .line 381
    :cond_5
    const-string v0, "invalid"

    goto :goto_0
.end method
