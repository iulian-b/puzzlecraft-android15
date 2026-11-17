.class public Lcom/fusepowered/m2/mobileads/factories/AdViewControllerFactory;
.super Ljava/lang/Object;
.source "AdViewControllerFactory.java"


# static fields
.field protected static instance:Lcom/fusepowered/m2/mobileads/factories/AdViewControllerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/fusepowered/m2/mobileads/factories/AdViewControllerFactory;

    invoke-direct {v0}, Lcom/fusepowered/m2/mobileads/factories/AdViewControllerFactory;-><init>()V

    sput-object v0, Lcom/fusepowered/m2/mobileads/factories/AdViewControllerFactory;->instance:Lcom/fusepowered/m2/mobileads/factories/AdViewControllerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/fusepowered/m2/mobileads/MoPubView;)Lcom/fusepowered/m2/mobileads/AdViewController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "moPubView"    # Lcom/fusepowered/m2/mobileads/MoPubView;

    .prologue
    .line 17
    sget-object v0, Lcom/fusepowered/m2/mobileads/factories/AdViewControllerFactory;->instance:Lcom/fusepowered/m2/mobileads/factories/AdViewControllerFactory;

    invoke-virtual {v0, p0, p1}, Lcom/fusepowered/m2/mobileads/factories/AdViewControllerFactory;->internalCreate(Landroid/content/Context;Lcom/fusepowered/m2/mobileads/MoPubView;)Lcom/fusepowered/m2/mobileads/AdViewController;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/fusepowered/m2/mobileads/factories/AdViewControllerFactory;)V
    .locals 0
    .param p0, "factory"    # Lcom/fusepowered/m2/mobileads/factories/AdViewControllerFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 13
    sput-object p0, Lcom/fusepowered/m2/mobileads/factories/AdViewControllerFactory;->instance:Lcom/fusepowered/m2/mobileads/factories/AdViewControllerFactory;

    .line 14
    return-void
.end method


# virtual methods
.method protected internalCreate(Landroid/content/Context;Lcom/fusepowered/m2/mobileads/MoPubView;)Lcom/fusepowered/m2/mobileads/AdViewController;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "moPubView"    # Lcom/fusepowered/m2/mobileads/MoPubView;

    .prologue
    .line 21
    new-instance v0, Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-direct {v0, p1, p2}, Lcom/fusepowered/m2/mobileads/AdViewController;-><init>(Landroid/content/Context;Lcom/fusepowered/m2/mobileads/MoPubView;)V

    return-object v0
.end method
