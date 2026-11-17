.class public Lcom/fusepowered/m2/mobileads/factories/MoPubViewFactory;
.super Ljava/lang/Object;
.source "MoPubViewFactory.java"


# static fields
.field protected static instance:Lcom/fusepowered/m2/mobileads/factories/MoPubViewFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/fusepowered/m2/mobileads/factories/MoPubViewFactory;

    invoke-direct {v0}, Lcom/fusepowered/m2/mobileads/factories/MoPubViewFactory;-><init>()V

    sput-object v0, Lcom/fusepowered/m2/mobileads/factories/MoPubViewFactory;->instance:Lcom/fusepowered/m2/mobileads/factories/MoPubViewFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/fusepowered/m2/mobileads/MoPubView;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    sget-object v0, Lcom/fusepowered/m2/mobileads/factories/MoPubViewFactory;->instance:Lcom/fusepowered/m2/mobileads/factories/MoPubViewFactory;

    invoke-virtual {v0, p0}, Lcom/fusepowered/m2/mobileads/factories/MoPubViewFactory;->internalCreate(Landroid/content/Context;)Lcom/fusepowered/m2/mobileads/MoPubView;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/fusepowered/m2/mobileads/factories/MoPubViewFactory;)V
    .locals 0
    .param p0, "factory"    # Lcom/fusepowered/m2/mobileads/factories/MoPubViewFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12
    sput-object p0, Lcom/fusepowered/m2/mobileads/factories/MoPubViewFactory;->instance:Lcom/fusepowered/m2/mobileads/factories/MoPubViewFactory;

    .line 13
    return-void
.end method


# virtual methods
.method protected internalCreate(Landroid/content/Context;)Lcom/fusepowered/m2/mobileads/MoPubView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    new-instance v0, Lcom/fusepowered/m2/mobileads/MoPubView;

    invoke-direct {v0, p1}, Lcom/fusepowered/m2/mobileads/MoPubView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
