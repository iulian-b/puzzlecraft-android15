.class Lcom/fusepowered/al/impl/sdk/ar;
.super Lcom/fusepowered/al/sdk/AppLovinSdkSettings;


# instance fields
.field private final a:Ljava/util/Map;

.field private b:Lcom/fusepowered/al/impl/sdk/j;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/fusepowered/al/sdk/AppLovinSdkSettings;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/al/impl/sdk/ar;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method a()Lcom/fusepowered/al/impl/sdk/j;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/ar;->b:Lcom/fusepowered/al/impl/sdk/j;

    return-object v0
.end method

.method b()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/ar;->a:Ljava/util/Map;

    return-object v0
.end method
