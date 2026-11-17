.class Lcom/fusepowered/ac/AdColony$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/AdColony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/app/Activity;

.field b:Ljava/lang/String;

.field c:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 412
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 407
    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/ac/AdColony$a;->b:Ljava/lang/String;

    .line 413
    iput-object p1, p0, Lcom/fusepowered/ac/AdColony$a;->a:Landroid/app/Activity;

    .line 414
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 419
    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/ac/AdColony$a;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/AdColony$a;->b:Ljava/lang/String;

    .line 444
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fusepowered/ac/AdColony$a;->c:Z

    .line 445
    :goto_0
    return-object v3

    .line 424
    :catch_0
    move-exception v0

    .line 427
    sget-object v0, Lcom/fusepowered/ac/l;->d:Lcom/fusepowered/ac/l;

    const-string v1, "Google Play Services SDK not installed! Collecting Android Id instead of Advertising Id."

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    goto :goto_0

    .line 430
    :catch_1
    move-exception v0

    .line 433
    sget-object v0, Lcom/fusepowered/ac/l;->d:Lcom/fusepowered/ac/l;

    const-string v1, "Google Play Services SDK is out of date! Please update to Google Play Services 4.0+. Collecting Android Id instead of Advertising Id."

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    goto :goto_0

    .line 436
    :catch_2
    move-exception v0

    .line 439
    sget-object v1, Lcom/fusepowered/ac/l;->d:Lcom/fusepowered/ac/l;

    const-string v2, "Advertising Id not available! Collecting Android Id instead of Advertising Id."

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 440
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/fusepowered/ac/AdColony$a;->b:Ljava/lang/String;

    sput-object v0, Lcom/fusepowered/ac/g;->a:Ljava/lang/String;

    .line 452
    iget-boolean v0, p0, Lcom/fusepowered/ac/AdColony$a;->c:Z

    sput-boolean v0, Lcom/fusepowered/ac/g;->b:Z

    .line 453
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/ac/AdColony;->b:Z

    .line 454
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 404
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fusepowered/ac/AdColony$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 404
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fusepowered/ac/AdColony$a;->a(Ljava/lang/Void;)V

    return-void
.end method
