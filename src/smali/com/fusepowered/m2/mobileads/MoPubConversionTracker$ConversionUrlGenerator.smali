.class Lcom/fusepowered/m2/mobileads/MoPubConversionTracker$ConversionUrlGenerator;
.super Lcom/fusepowered/m2/common/BaseUrlGenerator;
.source "MoPubConversionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/mobileads/MoPubConversionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConversionUrlGenerator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/mobileads/MoPubConversionTracker;


# direct methods
.method private constructor <init>(Lcom/fusepowered/m2/mobileads/MoPubConversionTracker;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/MoPubConversionTracker$ConversionUrlGenerator;->this$0:Lcom/fusepowered/m2/mobileads/MoPubConversionTracker;

    invoke-direct {p0}, Lcom/fusepowered/m2/common/BaseUrlGenerator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/m2/mobileads/MoPubConversionTracker;Lcom/fusepowered/m2/mobileads/MoPubConversionTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fusepowered/m2/mobileads/MoPubConversionTracker;
    .param p2, "x1"    # Lcom/fusepowered/m2/mobileads/MoPubConversionTracker$1;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/mobileads/MoPubConversionTracker$ConversionUrlGenerator;-><init>(Lcom/fusepowered/m2/mobileads/MoPubConversionTracker;)V

    return-void
.end method

.method private setPackageId(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/fusepowered/m2/mobileads/MoPubConversionTracker$ConversionUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method


# virtual methods
.method public generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "serverHostname"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string v1, "/m/open"

    invoke-virtual {p0, p1, v1}, Lcom/fusepowered/m2/mobileads/MoPubConversionTracker$ConversionUrlGenerator;->initUrlString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "6"

    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/mobileads/MoPubConversionTracker$ConversionUrlGenerator;->setApiVersion(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/MoPubConversionTracker$ConversionUrlGenerator;->this$0:Lcom/fusepowered/m2/mobileads/MoPubConversionTracker;

    invoke-static {v1}, Lcom/fusepowered/m2/mobileads/MoPubConversionTracker;->access$300(Lcom/fusepowered/m2/mobileads/MoPubConversionTracker;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fusepowered/m2/mobileads/MoPubConversionTracker$ConversionUrlGenerator;->setPackageId(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/MoPubConversionTracker$ConversionUrlGenerator;->this$0:Lcom/fusepowered/m2/mobileads/MoPubConversionTracker;

    invoke-static {v1}, Lcom/fusepowered/m2/mobileads/MoPubConversionTracker;->access$400(Lcom/fusepowered/m2/mobileads/MoPubConversionTracker;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/m2/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/fusepowered/m2/common/ClientMetadata;

    move-result-object v0

    .line 61
    .local v0, "clientMetadata":Lcom/fusepowered/m2/common/ClientMetadata;
    invoke-virtual {v0}, Lcom/fusepowered/m2/common/ClientMetadata;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/mobileads/MoPubConversionTracker$ConversionUrlGenerator;->setAppVersion(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/MoPubConversionTracker$ConversionUrlGenerator;->appendAdvertisingInfoTemplates()V

    .line 63
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/MoPubConversionTracker$ConversionUrlGenerator;->getFinalUrlString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
