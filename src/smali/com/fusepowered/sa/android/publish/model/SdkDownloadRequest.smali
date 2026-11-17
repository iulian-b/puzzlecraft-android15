.class public Lcom/fusepowered/sa/android/publish/model/SdkDownloadRequest;
.super Lcom/fusepowered/sa/android/publish/model/BaseRequest;


# static fields
.field private static final PLACEMENT:Ljava/lang/String; = "INAPP_DOWNLOAD"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/model/BaseRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getNameValueMap()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/sa/android/publish/model/NameValueObject;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/fusepowered/sa/android/publish/model/BaseRequest;->getNameValueMap()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const-string v1, "placement"

    const-string v2, "INAPP_DOWNLOAD"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-object v0
.end method
