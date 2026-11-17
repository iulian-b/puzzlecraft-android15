.class public Lcom/fusepowered/al/impl/sdk/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/fusepowered/al/impl/sdk/d;


# direct methods
.method private constructor <init>(Lcom/fusepowered/al/impl/sdk/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/b;->a:Lcom/fusepowered/al/impl/sdk/d;

    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/al/sdk/AppLovinAdService;)V
    .locals 0

    check-cast p1, Lcom/fusepowered/al/impl/sdk/d;

    invoke-direct {p0, p1}, Lcom/fusepowered/al/impl/sdk/b;-><init>(Lcom/fusepowered/al/impl/sdk/d;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/fusepowered/al/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/b;->a:Lcom/fusepowered/al/impl/sdk/d;

    invoke-virtual {v0, p1}, Lcom/fusepowered/al/impl/sdk/d;->a(Lcom/fusepowered/al/sdk/AppLovinAd;)V

    return-void
.end method
