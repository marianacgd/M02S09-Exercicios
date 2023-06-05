namespace FilmesApi
{
    internal interface IApiVersionDescriptionProvider
    {
        IEnumerable<object> ApiVersionDescriptions { get; }
    }
}